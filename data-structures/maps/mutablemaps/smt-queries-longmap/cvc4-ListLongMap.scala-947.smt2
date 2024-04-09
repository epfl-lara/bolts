; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20794 () Bool)

(assert start!20794)

(declare-fun b_free!5435 () Bool)

(declare-fun b_next!5435 () Bool)

(assert (=> start!20794 (= b_free!5435 (not b_next!5435))))

(declare-fun tp!19346 () Bool)

(declare-fun b_and!12199 () Bool)

(assert (=> start!20794 (= tp!19346 b_and!12199)))

(declare-fun b!208146 () Bool)

(declare-fun res!101215 () Bool)

(declare-fun e!135805 () Bool)

(assert (=> b!208146 (=> (not res!101215) (not e!135805))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9798 0))(
  ( (array!9799 (arr!4649 (Array (_ BitVec 32) (_ BitVec 64))) (size!4974 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9798)

(assert (=> b!208146 (= res!101215 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4974 _keys!825))))))

(declare-fun mapIsEmpty!9014 () Bool)

(declare-fun mapRes!9014 () Bool)

(assert (=> mapIsEmpty!9014 mapRes!9014))

(declare-fun b!208147 () Bool)

(declare-datatypes ((V!6709 0))(
  ( (V!6710 (val!2693 Int)) )
))
(declare-datatypes ((ValueCell!2305 0))(
  ( (ValueCellFull!2305 (v!4659 V!6709)) (EmptyCell!2305) )
))
(declare-datatypes ((array!9800 0))(
  ( (array!9801 (arr!4650 (Array (_ BitVec 32) ValueCell!2305)) (size!4975 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9800)

(assert (=> b!208147 (= e!135805 (bvsge i!601 (size!4975 _values!649)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6709)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6709)

(declare-datatypes ((tuple2!4078 0))(
  ( (tuple2!4079 (_1!2049 (_ BitVec 64)) (_2!2049 V!6709)) )
))
(declare-datatypes ((List!2997 0))(
  ( (Nil!2994) (Cons!2993 (h!3635 tuple2!4078) (t!7936 List!2997)) )
))
(declare-datatypes ((ListLongMap!3005 0))(
  ( (ListLongMap!3006 (toList!1518 List!2997)) )
))
(declare-fun lt!106759 () ListLongMap!3005)

(declare-fun getCurrentListMapNoExtraKeys!451 (array!9798 array!9800 (_ BitVec 32) (_ BitVec 32) V!6709 V!6709 (_ BitVec 32) Int) ListLongMap!3005)

(assert (=> b!208147 (= lt!106759 (getCurrentListMapNoExtraKeys!451 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!9014 () Bool)

(declare-fun tp!19345 () Bool)

(declare-fun e!135803 () Bool)

(assert (=> mapNonEmpty!9014 (= mapRes!9014 (and tp!19345 e!135803))))

(declare-fun mapKey!9014 () (_ BitVec 32))

(declare-fun mapRest!9014 () (Array (_ BitVec 32) ValueCell!2305))

(declare-fun mapValue!9014 () ValueCell!2305)

(assert (=> mapNonEmpty!9014 (= (arr!4650 _values!649) (store mapRest!9014 mapKey!9014 mapValue!9014))))

(declare-fun b!208148 () Bool)

(declare-fun res!101218 () Bool)

(assert (=> b!208148 (=> (not res!101218) (not e!135805))))

(assert (=> b!208148 (= res!101218 (and (= (size!4975 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4974 _keys!825) (size!4975 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208149 () Bool)

(declare-fun res!101216 () Bool)

(assert (=> b!208149 (=> (not res!101216) (not e!135805))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208149 (= res!101216 (= (select (arr!4649 _keys!825) i!601) k!843))))

(declare-fun b!208150 () Bool)

(declare-fun res!101221 () Bool)

(assert (=> b!208150 (=> (not res!101221) (not e!135805))))

(declare-datatypes ((List!2998 0))(
  ( (Nil!2995) (Cons!2994 (h!3636 (_ BitVec 64)) (t!7937 List!2998)) )
))
(declare-fun arrayNoDuplicates!0 (array!9798 (_ BitVec 32) List!2998) Bool)

(assert (=> b!208150 (= res!101221 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2995))))

(declare-fun b!208151 () Bool)

(declare-fun tp_is_empty!5297 () Bool)

(assert (=> b!208151 (= e!135803 tp_is_empty!5297)))

(declare-fun b!208153 () Bool)

(declare-fun e!135802 () Bool)

(assert (=> b!208153 (= e!135802 tp_is_empty!5297)))

(declare-fun b!208154 () Bool)

(declare-fun res!101219 () Bool)

(assert (=> b!208154 (=> (not res!101219) (not e!135805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9798 (_ BitVec 32)) Bool)

(assert (=> b!208154 (= res!101219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208155 () Bool)

(declare-fun e!135804 () Bool)

(assert (=> b!208155 (= e!135804 (and e!135802 mapRes!9014))))

(declare-fun condMapEmpty!9014 () Bool)

(declare-fun mapDefault!9014 () ValueCell!2305)

