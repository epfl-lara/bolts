; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40892 () Bool)

(assert start!40892)

(declare-fun b_free!10819 () Bool)

(declare-fun b_next!10819 () Bool)

(assert (=> start!40892 (= b_free!10819 (not b_next!10819))))

(declare-fun tp!38284 () Bool)

(declare-fun b_and!18979 () Bool)

(assert (=> start!40892 (= tp!38284 b_and!18979)))

(declare-fun b!453857 () Bool)

(declare-fun res!270417 () Bool)

(declare-fun e!265617 () Bool)

(assert (=> b!453857 (=> (not res!270417) (not e!265617))))

(declare-datatypes ((array!28083 0))(
  ( (array!28084 (arr!13482 (Array (_ BitVec 32) (_ BitVec 64))) (size!13834 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28083)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28083 (_ BitVec 32)) Bool)

(assert (=> b!453857 (= res!270417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19876 () Bool)

(declare-fun mapRes!19876 () Bool)

(declare-fun tp!38283 () Bool)

(declare-fun e!265622 () Bool)

(assert (=> mapNonEmpty!19876 (= mapRes!19876 (and tp!38283 e!265622))))

(declare-datatypes ((V!17315 0))(
  ( (V!17316 (val!6123 Int)) )
))
(declare-datatypes ((ValueCell!5735 0))(
  ( (ValueCellFull!5735 (v!8385 V!17315)) (EmptyCell!5735) )
))
(declare-fun mapRest!19876 () (Array (_ BitVec 32) ValueCell!5735))

(declare-datatypes ((array!28085 0))(
  ( (array!28086 (arr!13483 (Array (_ BitVec 32) ValueCell!5735)) (size!13835 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28085)

(declare-fun mapValue!19876 () ValueCell!5735)

(declare-fun mapKey!19876 () (_ BitVec 32))

(assert (=> mapNonEmpty!19876 (= (arr!13483 _values!549) (store mapRest!19876 mapKey!19876 mapValue!19876))))

(declare-fun b!453858 () Bool)

(declare-fun e!265619 () Bool)

(assert (=> b!453858 (= e!265617 e!265619)))

(declare-fun res!270412 () Bool)

(assert (=> b!453858 (=> (not res!270412) (not e!265619))))

(declare-fun lt!206021 () array!28083)

(assert (=> b!453858 (= res!270412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206021 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453858 (= lt!206021 (array!28084 (store (arr!13482 _keys!709) i!563 k!794) (size!13834 _keys!709)))))

(declare-fun res!270421 () Bool)

(assert (=> start!40892 (=> (not res!270421) (not e!265617))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40892 (= res!270421 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13834 _keys!709))))))

(assert (=> start!40892 e!265617))

(declare-fun tp_is_empty!12157 () Bool)

(assert (=> start!40892 tp_is_empty!12157))

(assert (=> start!40892 tp!38284))

(assert (=> start!40892 true))

(declare-fun e!265620 () Bool)

(declare-fun array_inv!9760 (array!28085) Bool)

(assert (=> start!40892 (and (array_inv!9760 _values!549) e!265620)))

(declare-fun array_inv!9761 (array!28083) Bool)

(assert (=> start!40892 (array_inv!9761 _keys!709)))

(declare-fun b!453859 () Bool)

(declare-fun res!270413 () Bool)

(assert (=> b!453859 (=> (not res!270413) (not e!265617))))

(declare-fun arrayContainsKey!0 (array!28083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453859 (= res!270413 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!453860 () Bool)

(declare-fun res!270419 () Bool)

(assert (=> b!453860 (=> (not res!270419) (not e!265617))))

(declare-datatypes ((List!8114 0))(
  ( (Nil!8111) (Cons!8110 (h!8966 (_ BitVec 64)) (t!13950 List!8114)) )
))
(declare-fun arrayNoDuplicates!0 (array!28083 (_ BitVec 32) List!8114) Bool)

(assert (=> b!453860 (= res!270419 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8111))))

(declare-fun b!453861 () Bool)

(declare-fun res!270414 () Bool)

(assert (=> b!453861 (=> (not res!270414) (not e!265619))))

(assert (=> b!453861 (= res!270414 (arrayNoDuplicates!0 lt!206021 #b00000000000000000000000000000000 Nil!8111))))

(declare-fun b!453862 () Bool)

(assert (=> b!453862 (= e!265622 tp_is_empty!12157)))

(declare-fun b!453863 () Bool)

(assert (=> b!453863 (= e!265619 false)))

(declare-datatypes ((tuple2!8012 0))(
  ( (tuple2!8013 (_1!4016 (_ BitVec 64)) (_2!4016 V!17315)) )
))
(declare-datatypes ((List!8115 0))(
  ( (Nil!8112) (Cons!8111 (h!8967 tuple2!8012) (t!13951 List!8115)) )
))
(declare-datatypes ((ListLongMap!6939 0))(
  ( (ListLongMap!6940 (toList!3485 List!8115)) )
))
(declare-fun lt!206020 () ListLongMap!6939)

(declare-fun minValue!515 () V!17315)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17315)

(declare-fun v!412 () V!17315)

(declare-fun getCurrentListMapNoExtraKeys!1661 (array!28083 array!28085 (_ BitVec 32) (_ BitVec 32) V!17315 V!17315 (_ BitVec 32) Int) ListLongMap!6939)

(assert (=> b!453863 (= lt!206020 (getCurrentListMapNoExtraKeys!1661 lt!206021 (array!28086 (store (arr!13483 _values!549) i!563 (ValueCellFull!5735 v!412)) (size!13835 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206022 () ListLongMap!6939)

(assert (=> b!453863 (= lt!206022 (getCurrentListMapNoExtraKeys!1661 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!453864 () Bool)

(declare-fun res!270420 () Bool)

(assert (=> b!453864 (=> (not res!270420) (not e!265617))))

(assert (=> b!453864 (= res!270420 (or (= (select (arr!13482 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13482 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453865 () Bool)

(declare-fun res!270418 () Bool)

(assert (=> b!453865 (=> (not res!270418) (not e!265617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453865 (= res!270418 (validMask!0 mask!1025))))

(declare-fun b!453866 () Bool)

(declare-fun e!265621 () Bool)

(assert (=> b!453866 (= e!265621 tp_is_empty!12157)))

(declare-fun mapIsEmpty!19876 () Bool)

(assert (=> mapIsEmpty!19876 mapRes!19876))

(declare-fun b!453867 () Bool)

(assert (=> b!453867 (= e!265620 (and e!265621 mapRes!19876))))

(declare-fun condMapEmpty!19876 () Bool)

(declare-fun mapDefault!19876 () ValueCell!5735)

