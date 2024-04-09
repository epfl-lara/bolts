; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20814 () Bool)

(assert start!20814)

(declare-fun b_free!5455 () Bool)

(declare-fun b_next!5455 () Bool)

(assert (=> start!20814 (= b_free!5455 (not b_next!5455))))

(declare-fun tp!19405 () Bool)

(declare-fun b_and!12219 () Bool)

(assert (=> start!20814 (= tp!19405 b_and!12219)))

(declare-fun b!208446 () Bool)

(declare-fun res!101431 () Bool)

(declare-fun e!135952 () Bool)

(assert (=> b!208446 (=> (not res!101431) (not e!135952))))

(declare-datatypes ((array!9836 0))(
  ( (array!9837 (arr!4668 (Array (_ BitVec 32) (_ BitVec 64))) (size!4993 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9836)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9836 (_ BitVec 32)) Bool)

(assert (=> b!208446 (= res!101431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208447 () Bool)

(declare-fun res!101428 () Bool)

(assert (=> b!208447 (=> (not res!101428) (not e!135952))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6737 0))(
  ( (V!6738 (val!2703 Int)) )
))
(declare-datatypes ((ValueCell!2315 0))(
  ( (ValueCellFull!2315 (v!4669 V!6737)) (EmptyCell!2315) )
))
(declare-datatypes ((array!9838 0))(
  ( (array!9839 (arr!4669 (Array (_ BitVec 32) ValueCell!2315)) (size!4994 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9838)

(assert (=> b!208447 (= res!101428 (and (= (size!4994 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4993 _keys!825) (size!4994 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208448 () Bool)

(declare-fun e!135955 () Bool)

(declare-fun tp_is_empty!5317 () Bool)

(assert (=> b!208448 (= e!135955 tp_is_empty!5317)))

(declare-fun b!208449 () Bool)

(declare-fun res!101429 () Bool)

(assert (=> b!208449 (=> (not res!101429) (not e!135952))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208449 (= res!101429 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!9044 () Bool)

(declare-fun mapRes!9044 () Bool)

(assert (=> mapIsEmpty!9044 mapRes!9044))

(declare-fun b!208450 () Bool)

(declare-fun res!101430 () Bool)

(assert (=> b!208450 (=> (not res!101430) (not e!135952))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208450 (= res!101430 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4993 _keys!825))))))

(declare-fun b!208451 () Bool)

(assert (=> b!208451 (= e!135952 false)))

(declare-datatypes ((tuple2!4092 0))(
  ( (tuple2!4093 (_1!2056 (_ BitVec 64)) (_2!2056 V!6737)) )
))
(declare-datatypes ((List!3012 0))(
  ( (Nil!3009) (Cons!3008 (h!3650 tuple2!4092) (t!7951 List!3012)) )
))
(declare-datatypes ((ListLongMap!3019 0))(
  ( (ListLongMap!3020 (toList!1525 List!3012)) )
))
(declare-fun lt!106818 () ListLongMap!3019)

(declare-fun v!520 () V!6737)

(declare-fun zeroValue!615 () V!6737)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6737)

(declare-fun getCurrentListMapNoExtraKeys!458 (array!9836 array!9838 (_ BitVec 32) (_ BitVec 32) V!6737 V!6737 (_ BitVec 32) Int) ListLongMap!3019)

(assert (=> b!208451 (= lt!106818 (getCurrentListMapNoExtraKeys!458 _keys!825 (array!9839 (store (arr!4669 _values!649) i!601 (ValueCellFull!2315 v!520)) (size!4994 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106819 () ListLongMap!3019)

(assert (=> b!208451 (= lt!106819 (getCurrentListMapNoExtraKeys!458 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208452 () Bool)

(declare-fun e!135954 () Bool)

(declare-fun e!135951 () Bool)

(assert (=> b!208452 (= e!135954 (and e!135951 mapRes!9044))))

(declare-fun condMapEmpty!9044 () Bool)

(declare-fun mapDefault!9044 () ValueCell!2315)

