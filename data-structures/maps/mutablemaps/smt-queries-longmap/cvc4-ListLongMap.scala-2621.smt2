; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39556 () Bool)

(assert start!39556)

(declare-fun b_free!9815 () Bool)

(declare-fun b_next!9815 () Bool)

(assert (=> start!39556 (= b_free!9815 (not b_next!9815))))

(declare-fun tp!34974 () Bool)

(declare-fun b_and!17489 () Bool)

(assert (=> start!39556 (= tp!34974 b_and!17489)))

(declare-fun b!422889 () Bool)

(declare-fun e!251486 () Bool)

(assert (=> b!422889 (= e!251486 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15727 0))(
  ( (V!15728 (val!5528 Int)) )
))
(declare-fun minValue!515 () V!15727)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15727)

(declare-datatypes ((tuple2!7188 0))(
  ( (tuple2!7189 (_1!3604 (_ BitVec 64)) (_2!3604 V!15727)) )
))
(declare-datatypes ((List!7232 0))(
  ( (Nil!7229) (Cons!7228 (h!8084 tuple2!7188) (t!12684 List!7232)) )
))
(declare-datatypes ((ListLongMap!6115 0))(
  ( (ListLongMap!6116 (toList!3073 List!7232)) )
))
(declare-fun lt!194060 () ListLongMap!6115)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15727)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25761 0))(
  ( (array!25762 (arr!12327 (Array (_ BitVec 32) (_ BitVec 64))) (size!12679 (_ BitVec 32))) )
))
(declare-fun lt!194061 () array!25761)

(declare-datatypes ((ValueCell!5140 0))(
  ( (ValueCellFull!5140 (v!7771 V!15727)) (EmptyCell!5140) )
))
(declare-datatypes ((array!25763 0))(
  ( (array!25764 (arr!12328 (Array (_ BitVec 32) ValueCell!5140)) (size!12680 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25763)

(declare-fun getCurrentListMapNoExtraKeys!1274 (array!25761 array!25763 (_ BitVec 32) (_ BitVec 32) V!15727 V!15727 (_ BitVec 32) Int) ListLongMap!6115)

(assert (=> b!422889 (= lt!194060 (getCurrentListMapNoExtraKeys!1274 lt!194061 (array!25764 (store (arr!12328 _values!549) i!563 (ValueCellFull!5140 v!412)) (size!12680 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194059 () ListLongMap!6115)

(declare-fun _keys!709 () array!25761)

(assert (=> b!422889 (= lt!194059 (getCurrentListMapNoExtraKeys!1274 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422890 () Bool)

(declare-fun res!247156 () Bool)

(declare-fun e!251489 () Bool)

(assert (=> b!422890 (=> (not res!247156) (not e!251489))))

(assert (=> b!422890 (= res!247156 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12679 _keys!709))))))

(declare-fun mapIsEmpty!18072 () Bool)

(declare-fun mapRes!18072 () Bool)

(assert (=> mapIsEmpty!18072 mapRes!18072))

(declare-fun b!422891 () Bool)

(declare-fun res!247148 () Bool)

(assert (=> b!422891 (=> (not res!247148) (not e!251489))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422891 (= res!247148 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422892 () Bool)

(declare-fun res!247150 () Bool)

(assert (=> b!422892 (=> (not res!247150) (not e!251489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25761 (_ BitVec 32)) Bool)

(assert (=> b!422892 (= res!247150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422893 () Bool)

(declare-fun res!247151 () Bool)

(assert (=> b!422893 (=> (not res!247151) (not e!251489))))

(assert (=> b!422893 (= res!247151 (and (= (size!12680 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12679 _keys!709) (size!12680 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422894 () Bool)

(declare-fun e!251488 () Bool)

(declare-fun tp_is_empty!10967 () Bool)

(assert (=> b!422894 (= e!251488 tp_is_empty!10967)))

(declare-fun b!422895 () Bool)

(declare-fun res!247158 () Bool)

(assert (=> b!422895 (=> (not res!247158) (not e!251489))))

(assert (=> b!422895 (= res!247158 (or (= (select (arr!12327 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12327 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422896 () Bool)

(declare-fun e!251487 () Bool)

(assert (=> b!422896 (= e!251487 tp_is_empty!10967)))

(declare-fun b!422897 () Bool)

(declare-fun res!247154 () Bool)

(assert (=> b!422897 (=> (not res!247154) (not e!251486))))

(assert (=> b!422897 (= res!247154 (bvsle from!863 i!563))))

(declare-fun b!422898 () Bool)

(declare-fun res!247157 () Bool)

(assert (=> b!422898 (=> (not res!247157) (not e!251486))))

(declare-datatypes ((List!7233 0))(
  ( (Nil!7230) (Cons!7229 (h!8085 (_ BitVec 64)) (t!12685 List!7233)) )
))
(declare-fun arrayNoDuplicates!0 (array!25761 (_ BitVec 32) List!7233) Bool)

(assert (=> b!422898 (= res!247157 (arrayNoDuplicates!0 lt!194061 #b00000000000000000000000000000000 Nil!7230))))

(declare-fun b!422899 () Bool)

(declare-fun res!247152 () Bool)

(assert (=> b!422899 (=> (not res!247152) (not e!251489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422899 (= res!247152 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18072 () Bool)

(declare-fun tp!34973 () Bool)

(assert (=> mapNonEmpty!18072 (= mapRes!18072 (and tp!34973 e!251487))))

(declare-fun mapValue!18072 () ValueCell!5140)

(declare-fun mapRest!18072 () (Array (_ BitVec 32) ValueCell!5140))

(declare-fun mapKey!18072 () (_ BitVec 32))

(assert (=> mapNonEmpty!18072 (= (arr!12328 _values!549) (store mapRest!18072 mapKey!18072 mapValue!18072))))

(declare-fun res!247147 () Bool)

(assert (=> start!39556 (=> (not res!247147) (not e!251489))))

(assert (=> start!39556 (= res!247147 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12679 _keys!709))))))

(assert (=> start!39556 e!251489))

(assert (=> start!39556 tp_is_empty!10967))

(assert (=> start!39556 tp!34974))

(assert (=> start!39556 true))

(declare-fun e!251490 () Bool)

(declare-fun array_inv!8982 (array!25763) Bool)

(assert (=> start!39556 (and (array_inv!8982 _values!549) e!251490)))

(declare-fun array_inv!8983 (array!25761) Bool)

(assert (=> start!39556 (array_inv!8983 _keys!709)))

(declare-fun b!422900 () Bool)

(assert (=> b!422900 (= e!251490 (and e!251488 mapRes!18072))))

(declare-fun condMapEmpty!18072 () Bool)

(declare-fun mapDefault!18072 () ValueCell!5140)

