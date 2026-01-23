; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!227794 () Bool)

(assert start!227794)

(declare-fun res!988074 () Bool)

(declare-fun e!1481142 () Bool)

(assert (=> start!227794 (=> res!988074 e!1481142)))

(declare-fun lt!857396 () Bool)

(assert (=> start!227794 (= res!988074 lt!857396)))

(declare-fun lt!857393 () Bool)

(assert (=> start!227794 (= lt!857396 lt!857393)))

(declare-datatypes ((T!43256 0))(
  ( (T!43257 (val!7883 Int)) )
))
(declare-datatypes ((List!27596 0))(
  ( (Nil!27502) (Cons!27502 (h!32903 T!43256) (t!207096 List!27596)) )
))
(declare-fun lt!857397 () List!27596)

(declare-fun isEmpty!15739 (List!27596) Bool)

(assert (=> start!227794 (= lt!857393 (isEmpty!15739 lt!857397))))

(declare-fun lt!857394 () Int)

(assert (=> start!227794 (= lt!857396 (= lt!857394 0))))

(declare-fun size!21718 (List!27596) Int)

(assert (=> start!227794 (= lt!857394 (size!21718 lt!857397))))

(declare-datatypes ((List!27598 0) (BalanceConc!17681 0) (Object!4669 0) (IArray!17957 0) (Conc!8976 0))(
  ( (Nil!27503) (Cons!27503 (h!32904 Object!4669) (t!207097 List!27598)) )
  ( (BalanceConc!17682 (c!366405 Conc!8976)) )
  ( (BalanceConc!17680 (value!139594 BalanceConc!17681)) (List!27597 (value!139595 List!27598)) (Character!93 (value!139596 (_ BitVec 16))) (Open!93 (value!139597 Int)) )
  ( (IArray!17958 (innerList!9036 List!27598)) )
  ( (Node!8976 (left!20836 Conc!8976) (right!21166 Conc!8976) (csize!18182 Int) (cheight!9187 Int)) (Leaf!13169 (xs!11918 IArray!17957) (csize!18183 Int)) (Empty!8976) )
))
(declare-datatypes ((Vector!190 0))(
  ( (Vector!191 (underlying!6549 Object!4669) (overflowing!152 List!27596)) )
))
(declare-fun thiss!9475 () Vector!190)

(declare-fun list!10874 (Vector!190) List!27596)

(assert (=> start!227794 (= lt!857397 (list!10874 thiss!9475))))

(declare-fun size!21719 (Vector!190) Int)

(assert (=> start!227794 (= lt!857394 (size!21719 thiss!9475))))

(assert (=> start!227794 (not e!1481142)))

(declare-fun e!1481143 () Bool)

(assert (=> start!227794 e!1481143))

(declare-fun b!2311125 () Bool)

(assert (=> b!2311125 (= e!1481142 (not lt!857393))))

(declare-fun lt!857395 () T!43256)

(declare-fun choose!13514 (Vector!190) T!43256)

(assert (=> b!2311125 (= lt!857395 (choose!13514 thiss!9475))))

(declare-fun b!2311126 () Bool)

(declare-fun tp!733240 () Bool)

(declare-fun tp!733241 () Bool)

(assert (=> b!2311126 (= e!1481143 (and tp!733240 tp!733241))))

(assert (= (and start!227794 (not res!988074)) b!2311125))

(assert (= start!227794 b!2311126))

(declare-fun m!2738471 () Bool)

(assert (=> start!227794 m!2738471))

(declare-fun m!2738473 () Bool)

(assert (=> start!227794 m!2738473))

(declare-fun m!2738475 () Bool)

(assert (=> start!227794 m!2738475))

(declare-fun m!2738477 () Bool)

(assert (=> start!227794 m!2738477))

(declare-fun m!2738479 () Bool)

(assert (=> b!2311125 m!2738479))

(push 1)

(assert (not start!227794))

(assert (not b!2311125))

(assert (not b!2311126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

