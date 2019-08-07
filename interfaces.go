package rabbitmq

import "github.com/smartystreets/messaging/v2"

type Controller interface {
	openChannel(func() bool) Channel
	removeReader(messaging.Reader)
	removeWriter(messaging.Writer)
}
