; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20718 () Bool)

(assert start!20718)

(declare-fun b_free!5365 () Bool)

(declare-fun b_next!5365 () Bool)

(assert (=> start!20718 (= b_free!5365 (not b_next!5365))))

(declare-fun tp!19127 () Bool)

(declare-fun b_and!12129 () Bool)

(assert (=> start!20718 (= tp!19127 b_and!12129)))

(declare-fun b!207042 () Bool)

(declare-fun res!100453 () Bool)

(declare-fun e!135235 () Bool)

(assert (=> b!207042 (=> (not res!100453) (not e!135235))))

(declare-datatypes ((array!9650 0))(
  ( (array!9651 (arr!4575 (Array (_ BitVec 32) (_ BitVec 64))) (size!4900 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9650)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207042 (= res!100453 (= (select (arr!4575 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8900 () Bool)

(declare-fun mapRes!8900 () Bool)

(declare-fun tp!19126 () Bool)

(declare-fun e!135231 () Bool)

(assert (=> mapNonEmpty!8900 (= mapRes!8900 (and tp!19126 e!135231))))

(declare-datatypes ((V!6609 0))(
  ( (V!6610 (val!2655 Int)) )
))
(declare-datatypes ((ValueCell!2267 0))(
  ( (ValueCellFull!2267 (v!4621 V!6609)) (EmptyCell!2267) )
))
(declare-fun mapRest!8900 () (Array (_ BitVec 32) ValueCell!2267))

(declare-fun mapKey!8900 () (_ BitVec 32))

(declare-datatypes ((array!9652 0))(
  ( (array!9653 (arr!4576 (Array (_ BitVec 32) ValueCell!2267)) (size!4901 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9652)

(declare-fun mapValue!8900 () ValueCell!2267)

(assert (=> mapNonEmpty!8900 (= (arr!4576 _values!649) (store mapRest!8900 mapKey!8900 mapValue!8900))))

(declare-fun b!207043 () Bool)

(assert (=> b!207043 (= e!135235 (not true))))

(declare-datatypes ((tuple2!4026 0))(
  ( (tuple2!4027 (_1!2023 (_ BitVec 64)) (_2!2023 V!6609)) )
))
(declare-datatypes ((List!2941 0))(
  ( (Nil!2938) (Cons!2937 (h!3579 tuple2!4026) (t!7880 List!2941)) )
))
(declare-datatypes ((ListLongMap!2953 0))(
  ( (ListLongMap!2954 (toList!1492 List!2941)) )
))
(declare-fun lt!106051 () ListLongMap!2953)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6609)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6609)

(declare-fun getCurrentListMap!1054 (array!9650 array!9652 (_ BitVec 32) (_ BitVec 32) V!6609 V!6609 (_ BitVec 32) Int) ListLongMap!2953)

(assert (=> b!207043 (= lt!106051 (getCurrentListMap!1054 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106049 () ListLongMap!2953)

(declare-fun lt!106047 () array!9652)

(assert (=> b!207043 (= lt!106049 (getCurrentListMap!1054 _keys!825 lt!106047 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106046 () ListLongMap!2953)

(declare-fun lt!106048 () ListLongMap!2953)

(assert (=> b!207043 (and (= lt!106046 lt!106048) (= lt!106048 lt!106046))))

(declare-fun lt!106050 () ListLongMap!2953)

(declare-fun v!520 () V!6609)

(declare-fun +!509 (ListLongMap!2953 tuple2!4026) ListLongMap!2953)

(assert (=> b!207043 (= lt!106048 (+!509 lt!106050 (tuple2!4027 k!843 v!520)))))

(declare-datatypes ((Unit!6313 0))(
  ( (Unit!6314) )
))
(declare-fun lt!106045 () Unit!6313)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!167 (array!9650 array!9652 (_ BitVec 32) (_ BitVec 32) V!6609 V!6609 (_ BitVec 32) (_ BitVec 64) V!6609 (_ BitVec 32) Int) Unit!6313)

(assert (=> b!207043 (= lt!106045 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!167 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!425 (array!9650 array!9652 (_ BitVec 32) (_ BitVec 32) V!6609 V!6609 (_ BitVec 32) Int) ListLongMap!2953)

(assert (=> b!207043 (= lt!106046 (getCurrentListMapNoExtraKeys!425 _keys!825 lt!106047 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207043 (= lt!106047 (array!9653 (store (arr!4576 _values!649) i!601 (ValueCellFull!2267 v!520)) (size!4901 _values!649)))))

(assert (=> b!207043 (= lt!106050 (getCurrentListMapNoExtraKeys!425 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207044 () Bool)

(declare-fun e!135234 () Bool)

(declare-fun tp_is_empty!5221 () Bool)

(assert (=> b!207044 (= e!135234 tp_is_empty!5221)))

(declare-fun b!207045 () Bool)

(declare-fun res!100458 () Bool)

(assert (=> b!207045 (=> (not res!100458) (not e!135235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9650 (_ BitVec 32)) Bool)

(assert (=> b!207045 (= res!100458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207046 () Bool)

(declare-fun res!100456 () Bool)

(assert (=> b!207046 (=> (not res!100456) (not e!135235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207046 (= res!100456 (validKeyInArray!0 k!843))))

(declare-fun res!100454 () Bool)

(assert (=> start!20718 (=> (not res!100454) (not e!135235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20718 (= res!100454 (validMask!0 mask!1149))))

(assert (=> start!20718 e!135235))

(declare-fun e!135233 () Bool)

(declare-fun array_inv!3019 (array!9652) Bool)

(assert (=> start!20718 (and (array_inv!3019 _values!649) e!135233)))

(assert (=> start!20718 true))

(assert (=> start!20718 tp_is_empty!5221))

(declare-fun array_inv!3020 (array!9650) Bool)

(assert (=> start!20718 (array_inv!3020 _keys!825)))

(assert (=> start!20718 tp!19127))

(declare-fun mapIsEmpty!8900 () Bool)

(assert (=> mapIsEmpty!8900 mapRes!8900))

(declare-fun b!207047 () Bool)

(declare-fun res!100459 () Bool)

(assert (=> b!207047 (=> (not res!100459) (not e!135235))))

(assert (=> b!207047 (= res!100459 (and (= (size!4901 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4900 _keys!825) (size!4901 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207048 () Bool)

(assert (=> b!207048 (= e!135231 tp_is_empty!5221)))

(declare-fun b!207049 () Bool)

(declare-fun res!100455 () Bool)

(assert (=> b!207049 (=> (not res!100455) (not e!135235))))

(declare-datatypes ((List!2942 0))(
  ( (Nil!2939) (Cons!2938 (h!3580 (_ BitVec 64)) (t!7881 List!2942)) )
))
(declare-fun arrayNoDuplicates!0 (array!9650 (_ BitVec 32) List!2942) Bool)

(assert (=> b!207049 (= res!100455 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2939))))

(declare-fun b!207050 () Bool)

(assert (=> b!207050 (= e!135233 (and e!135234 mapRes!8900))))

(declare-fun condMapEmpty!8900 () Bool)

(declare-fun mapDefault!8900 () ValueCell!2267)

