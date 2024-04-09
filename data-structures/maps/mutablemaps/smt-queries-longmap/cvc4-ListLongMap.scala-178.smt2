; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3468 () Bool)

(assert start!3468)

(declare-fun b!22761 () Bool)

(declare-fun b_free!749 () Bool)

(declare-fun b_next!749 () Bool)

(assert (=> b!22761 (= b_free!749 (not b_next!749))))

(declare-fun tp!3491 () Bool)

(declare-fun b_and!1469 () Bool)

(assert (=> b!22761 (= tp!3491 b_and!1469)))

(declare-fun b!22754 () Bool)

(declare-fun e!14785 () Bool)

(declare-fun tp_is_empty!1013 () Bool)

(assert (=> b!22754 (= e!14785 tp_is_empty!1013)))

(declare-fun mapIsEmpty!1007 () Bool)

(declare-fun mapRes!1007 () Bool)

(assert (=> mapIsEmpty!1007 mapRes!1007))

(declare-fun b!22755 () Bool)

(declare-datatypes ((V!1175 0))(
  ( (V!1176 (val!533 Int)) )
))
(declare-datatypes ((ValueCell!307 0))(
  ( (ValueCellFull!307 (v!1592 V!1175)) (EmptyCell!307) )
))
(declare-datatypes ((array!1253 0))(
  ( (array!1254 (arr!593 (Array (_ BitVec 32) ValueCell!307)) (size!689 (_ BitVec 32))) )
))
(declare-datatypes ((array!1255 0))(
  ( (array!1256 (arr!594 (Array (_ BitVec 32) (_ BitVec 64))) (size!690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!200 0))(
  ( (LongMapFixedSize!201 (defaultEntry!1737 Int) (mask!4719 (_ BitVec 32)) (extraKeys!1636 (_ BitVec 32)) (zeroValue!1661 V!1175) (minValue!1661 V!1175) (_size!144 (_ BitVec 32)) (_keys!3159 array!1255) (_values!1724 array!1253) (_vacant!144 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!918 0))(
  ( (tuple2!919 (_1!465 Bool) (_2!465 LongMapFixedSize!200)) )
))
(declare-fun lt!7884 () tuple2!918)

(declare-fun call!1730 () tuple2!918)

(assert (=> b!22755 (= lt!7884 call!1730)))

(declare-datatypes ((Cell!200 0))(
  ( (Cell!201 (v!1593 LongMapFixedSize!200)) )
))
(declare-datatypes ((tuple2!920 0))(
  ( (tuple2!921 (_1!466 Bool) (_2!466 Cell!200)) )
))
(declare-fun e!14779 () tuple2!920)

(assert (=> b!22755 (= e!14779 (tuple2!921 (_1!465 lt!7884) (Cell!201 (_2!465 lt!7884))))))

(declare-fun b!22756 () Bool)

(declare-fun e!14777 () Bool)

(declare-fun e!14782 () Bool)

(assert (=> b!22756 (= e!14777 e!14782)))

(declare-fun b!22757 () Bool)

(declare-datatypes ((LongMap!200 0))(
  ( (LongMap!201 (underlying!111 Cell!200)) )
))
(declare-datatypes ((tuple3!12 0))(
  ( (tuple3!13 (_1!467 Bool) (_2!467 Cell!200) (_3!6 LongMap!200)) )
))
(declare-fun e!14778 () tuple3!12)

(declare-fun lt!7891 () tuple2!920)

(declare-fun thiss!938 () LongMap!200)

(assert (=> b!22757 (= e!14778 (tuple3!13 false (_2!466 lt!7891) thiss!938))))

(declare-fun b!22758 () Bool)

(declare-fun e!14787 () tuple2!920)

(declare-fun lt!7883 () tuple2!918)

(declare-fun lt!7887 () tuple2!918)

(assert (=> b!22758 (= e!14787 (tuple2!921 (and (_1!465 lt!7883) (_1!465 lt!7887)) (Cell!201 (_2!465 lt!7887))))))

(declare-fun lt!7890 () LongMapFixedSize!200)

(declare-fun update!30 (LongMapFixedSize!200 (_ BitVec 64) V!1175) tuple2!918)

(assert (=> b!22758 (= lt!7883 (update!30 lt!7890 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1661 (v!1593 (underlying!111 thiss!938)))))))

(declare-fun call!1729 () tuple2!918)

(assert (=> b!22758 (= lt!7887 call!1729)))

(declare-fun b!22759 () Bool)

(declare-fun e!14781 () Bool)

(assert (=> b!22759 (= e!14781 (and e!14785 mapRes!1007))))

(declare-fun condMapEmpty!1007 () Bool)

(declare-fun mapDefault!1007 () ValueCell!307)

