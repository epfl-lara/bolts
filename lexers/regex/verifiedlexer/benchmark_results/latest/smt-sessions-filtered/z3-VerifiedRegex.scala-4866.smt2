; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249524 () Bool)

(assert start!249524)

(declare-fun res!1084896 () Bool)

(declare-fun e!1627527 () Bool)

(assert (=> start!249524 (=> (not res!1084896) (not e!1627527))))

(declare-fun initialSize!22 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249524 (= res!1084896 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(assert (=> start!249524 e!1627527))

(assert (=> start!249524 true))

(declare-fun b!2579054 () Bool)

(assert (=> b!2579054 (= e!1627527 false)))

(declare-datatypes ((V!6101 0))(
  ( (V!6102 (val!9411 Int)) )
))
(declare-datatypes ((K!5899 0))(
  ( (K!5900 (val!9412 Int)) )
))
(declare-datatypes ((tuple2!29662 0))(
  ( (tuple2!29663 (_1!17373 K!5899) (_2!17373 V!6101)) )
))
(declare-datatypes ((array!12279 0))(
  ( (array!12280 (arr!5478 (Array (_ BitVec 32) (_ BitVec 64))) (size!23008 (_ BitVec 32))) )
))
(declare-datatypes ((List!29797 0))(
  ( (Nil!29697) (Cons!29697 (h!35117 tuple2!29662) (t!211682 List!29797)) )
))
(declare-datatypes ((array!12281 0))(
  ( (array!12282 (arr!5479 (Array (_ BitVec 32) List!29797)) (size!23009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6888 0))(
  ( (LongMapFixedSize!6889 (defaultEntry!3822 Int) (mask!8870 (_ BitVec 32)) (extraKeys!3692 (_ BitVec 32)) (zeroValue!3702 List!29797) (minValue!3702 List!29797) (_size!6934 (_ BitVec 32)) (_keys!3741 array!12279) (_values!3724 array!12281) (_vacant!3505 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13591 0))(
  ( (Cell!13592 (v!32008 LongMapFixedSize!6888)) )
))
(declare-datatypes ((MutLongMap!3444 0))(
  ( (LongMap!3444 (underlying!7094 Cell!13591)) (MutLongMapExt!3443 (__x!19274 Int)) )
))
(declare-fun lt!907394 () MutLongMap!3444)

(declare-fun lambda!95542 () Int)

(declare-fun getEmptyLongMap!23 (Int (_ BitVec 32)) MutLongMap!3444)

(assert (=> b!2579054 (= lt!907394 (getEmptyLongMap!23 lambda!95542 initialSize!22))))

(assert (= (and start!249524 res!1084896) b!2579054))

(declare-fun m!2913967 () Bool)

(assert (=> start!249524 m!2913967))

(declare-fun m!2913969 () Bool)

(assert (=> b!2579054 m!2913969))

(check-sat (not start!249524) (not b!2579054))
(check-sat)
