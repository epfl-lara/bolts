; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37150 () Bool)

(assert start!37150)

(declare-fun b_free!8269 () Bool)

(declare-fun b_next!8269 () Bool)

(assert (=> start!37150 (= b_free!8269 (not b_next!8269))))

(declare-fun tp!29523 () Bool)

(declare-fun b_and!15529 () Bool)

(assert (=> start!37150 (= tp!29523 b_and!15529)))

(declare-fun b!374292 () Bool)

(declare-fun e!228123 () Bool)

(declare-fun e!228120 () Bool)

(assert (=> b!374292 (= e!228123 e!228120)))

(declare-fun res!211144 () Bool)

(assert (=> b!374292 (=> res!211144 e!228120)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!374292 (= res!211144 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!12995 0))(
  ( (V!12996 (val!4503 Int)) )
))
(declare-datatypes ((tuple2!5964 0))(
  ( (tuple2!5965 (_1!2992 (_ BitVec 64)) (_2!2992 V!12995)) )
))
(declare-datatypes ((List!5836 0))(
  ( (Nil!5833) (Cons!5832 (h!6688 tuple2!5964) (t!10994 List!5836)) )
))
(declare-datatypes ((ListLongMap!4891 0))(
  ( (ListLongMap!4892 (toList!2461 List!5836)) )
))
(declare-fun lt!172630 () ListLongMap!4891)

(declare-fun lt!172628 () ListLongMap!4891)

(assert (=> b!374292 (= lt!172630 lt!172628)))

(declare-fun lt!172636 () ListLongMap!4891)

(declare-fun lt!172634 () tuple2!5964)

(declare-fun +!802 (ListLongMap!4891 tuple2!5964) ListLongMap!4891)

(assert (=> b!374292 (= lt!172628 (+!802 lt!172636 lt!172634))))

(declare-fun zeroValue!472 () V!12995)

(declare-datatypes ((Unit!11507 0))(
  ( (Unit!11508) )
))
(declare-fun lt!172627 () Unit!11507)

(declare-fun lt!172641 () ListLongMap!4891)

(declare-fun v!373 () V!12995)

(declare-fun addCommutativeForDiffKeys!231 (ListLongMap!4891 (_ BitVec 64) V!12995 (_ BitVec 64) V!12995) Unit!11507)

(assert (=> b!374292 (= lt!172627 (addCommutativeForDiffKeys!231 lt!172641 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172633 () ListLongMap!4891)

(declare-fun lt!172629 () tuple2!5964)

(assert (=> b!374292 (= lt!172633 (+!802 lt!172630 lt!172629))))

(declare-fun lt!172638 () ListLongMap!4891)

(declare-fun lt!172640 () tuple2!5964)

(assert (=> b!374292 (= lt!172630 (+!802 lt!172638 lt!172640))))

(declare-fun lt!172639 () ListLongMap!4891)

(declare-fun lt!172626 () ListLongMap!4891)

(assert (=> b!374292 (= lt!172639 lt!172626)))

(assert (=> b!374292 (= lt!172626 (+!802 lt!172636 lt!172629))))

(assert (=> b!374292 (= lt!172636 (+!802 lt!172641 lt!172640))))

(declare-fun lt!172635 () ListLongMap!4891)

(assert (=> b!374292 (= lt!172633 (+!802 (+!802 lt!172635 lt!172640) lt!172629))))

(declare-fun minValue!472 () V!12995)

(assert (=> b!374292 (= lt!172629 (tuple2!5965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374292 (= lt!172640 (tuple2!5965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!14940 () Bool)

(declare-fun mapRes!14940 () Bool)

(declare-fun tp!29522 () Bool)

(declare-fun e!228117 () Bool)

(assert (=> mapNonEmpty!14940 (= mapRes!14940 (and tp!29522 e!228117))))

(declare-datatypes ((ValueCell!4115 0))(
  ( (ValueCellFull!4115 (v!6696 V!12995)) (EmptyCell!4115) )
))
(declare-fun mapRest!14940 () (Array (_ BitVec 32) ValueCell!4115))

(declare-datatypes ((array!21739 0))(
  ( (array!21740 (arr!10335 (Array (_ BitVec 32) ValueCell!4115)) (size!10687 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21739)

(declare-fun mapValue!14940 () ValueCell!4115)

(declare-fun mapKey!14940 () (_ BitVec 32))

(assert (=> mapNonEmpty!14940 (= (arr!10335 _values!506) (store mapRest!14940 mapKey!14940 mapValue!14940))))

(declare-fun b!374293 () Bool)

(declare-fun tp_is_empty!8917 () Bool)

(assert (=> b!374293 (= e!228117 tp_is_empty!8917)))

(declare-fun b!374294 () Bool)

(declare-fun e!228118 () Bool)

(declare-fun e!228122 () Bool)

(assert (=> b!374294 (= e!228118 (and e!228122 mapRes!14940))))

(declare-fun condMapEmpty!14940 () Bool)

(declare-fun mapDefault!14940 () ValueCell!4115)

