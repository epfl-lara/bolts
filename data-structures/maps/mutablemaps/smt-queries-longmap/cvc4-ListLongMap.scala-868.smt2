; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20320 () Bool)

(assert start!20320)

(declare-fun b_free!4967 () Bool)

(declare-fun b_next!4967 () Bool)

(assert (=> start!20320 (= b_free!4967 (not b_next!4967))))

(declare-fun tp!17933 () Bool)

(declare-fun b_and!11731 () Bool)

(assert (=> start!20320 (= tp!17933 b_and!11731)))

(declare-fun b!200010 () Bool)

(declare-fun res!95213 () Bool)

(declare-fun e!131213 () Bool)

(assert (=> b!200010 (=> (not res!95213) (not e!131213))))

(declare-datatypes ((array!8882 0))(
  ( (array!8883 (arr!4191 (Array (_ BitVec 32) (_ BitVec 64))) (size!4516 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8882)

(declare-datatypes ((List!2649 0))(
  ( (Nil!2646) (Cons!2645 (h!3287 (_ BitVec 64)) (t!7588 List!2649)) )
))
(declare-fun arrayNoDuplicates!0 (array!8882 (_ BitVec 32) List!2649) Bool)

(assert (=> b!200010 (= res!95213 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2646))))

(declare-fun b!200011 () Bool)

(declare-fun res!95217 () Bool)

(assert (=> b!200011 (=> (not res!95217) (not e!131213))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200011 (= res!95217 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4516 _keys!825))))))

(declare-fun b!200012 () Bool)

(declare-fun res!95215 () Bool)

(assert (=> b!200012 (=> (not res!95215) (not e!131213))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6077 0))(
  ( (V!6078 (val!2456 Int)) )
))
(declare-datatypes ((ValueCell!2068 0))(
  ( (ValueCellFull!2068 (v!4422 V!6077)) (EmptyCell!2068) )
))
(declare-datatypes ((array!8884 0))(
  ( (array!8885 (arr!4192 (Array (_ BitVec 32) ValueCell!2068)) (size!4517 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8884)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!200012 (= res!95215 (and (= (size!4517 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4516 _keys!825) (size!4517 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200013 () Bool)

(declare-fun res!95212 () Bool)

(assert (=> b!200013 (=> (not res!95212) (not e!131213))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200013 (= res!95212 (validKeyInArray!0 k!843))))

(declare-fun res!95218 () Bool)

(assert (=> start!20320 (=> (not res!95218) (not e!131213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20320 (= res!95218 (validMask!0 mask!1149))))

(assert (=> start!20320 e!131213))

(declare-fun e!131212 () Bool)

(declare-fun array_inv!2749 (array!8884) Bool)

(assert (=> start!20320 (and (array_inv!2749 _values!649) e!131212)))

(assert (=> start!20320 true))

(declare-fun tp_is_empty!4823 () Bool)

(assert (=> start!20320 tp_is_empty!4823))

(declare-fun array_inv!2750 (array!8882) Bool)

(assert (=> start!20320 (array_inv!2750 _keys!825)))

(assert (=> start!20320 tp!17933))

(declare-fun b!200014 () Bool)

(declare-fun res!95216 () Bool)

(assert (=> b!200014 (=> (not res!95216) (not e!131213))))

(assert (=> b!200014 (= res!95216 (= (select (arr!4191 _keys!825) i!601) k!843))))

(declare-fun b!200015 () Bool)

(declare-fun e!131214 () Bool)

(assert (=> b!200015 (= e!131214 tp_is_empty!4823)))

(declare-fun b!200016 () Bool)

(assert (=> b!200016 (= e!131213 (not true))))

(declare-fun lt!98711 () array!8884)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6077)

(declare-fun zeroValue!615 () V!6077)

(declare-datatypes ((tuple2!3708 0))(
  ( (tuple2!3709 (_1!1864 (_ BitVec 64)) (_2!1864 V!6077)) )
))
(declare-datatypes ((List!2650 0))(
  ( (Nil!2647) (Cons!2646 (h!3288 tuple2!3708) (t!7589 List!2650)) )
))
(declare-datatypes ((ListLongMap!2635 0))(
  ( (ListLongMap!2636 (toList!1333 List!2650)) )
))
(declare-fun lt!98710 () ListLongMap!2635)

(declare-fun getCurrentListMap!919 (array!8882 array!8884 (_ BitVec 32) (_ BitVec 32) V!6077 V!6077 (_ BitVec 32) Int) ListLongMap!2635)

(assert (=> b!200016 (= lt!98710 (getCurrentListMap!919 _keys!825 lt!98711 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98713 () ListLongMap!2635)

(declare-fun lt!98708 () ListLongMap!2635)

(assert (=> b!200016 (and (= lt!98713 lt!98708) (= lt!98708 lt!98713))))

(declare-fun lt!98712 () ListLongMap!2635)

(declare-fun v!520 () V!6077)

(declare-fun +!350 (ListLongMap!2635 tuple2!3708) ListLongMap!2635)

(assert (=> b!200016 (= lt!98708 (+!350 lt!98712 (tuple2!3709 k!843 v!520)))))

(declare-datatypes ((Unit!6009 0))(
  ( (Unit!6010) )
))
(declare-fun lt!98709 () Unit!6009)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!32 (array!8882 array!8884 (_ BitVec 32) (_ BitVec 32) V!6077 V!6077 (_ BitVec 32) (_ BitVec 64) V!6077 (_ BitVec 32) Int) Unit!6009)

(assert (=> b!200016 (= lt!98709 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!32 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!290 (array!8882 array!8884 (_ BitVec 32) (_ BitVec 32) V!6077 V!6077 (_ BitVec 32) Int) ListLongMap!2635)

(assert (=> b!200016 (= lt!98713 (getCurrentListMapNoExtraKeys!290 _keys!825 lt!98711 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200016 (= lt!98711 (array!8885 (store (arr!4192 _values!649) i!601 (ValueCellFull!2068 v!520)) (size!4517 _values!649)))))

(assert (=> b!200016 (= lt!98712 (getCurrentListMapNoExtraKeys!290 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8303 () Bool)

(declare-fun mapRes!8303 () Bool)

(declare-fun tp!17932 () Bool)

(assert (=> mapNonEmpty!8303 (= mapRes!8303 (and tp!17932 e!131214))))

(declare-fun mapKey!8303 () (_ BitVec 32))

(declare-fun mapRest!8303 () (Array (_ BitVec 32) ValueCell!2068))

(declare-fun mapValue!8303 () ValueCell!2068)

(assert (=> mapNonEmpty!8303 (= (arr!4192 _values!649) (store mapRest!8303 mapKey!8303 mapValue!8303))))

(declare-fun b!200017 () Bool)

(declare-fun res!95214 () Bool)

(assert (=> b!200017 (=> (not res!95214) (not e!131213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8882 (_ BitVec 32)) Bool)

(assert (=> b!200017 (= res!95214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200018 () Bool)

(declare-fun e!131211 () Bool)

(assert (=> b!200018 (= e!131211 tp_is_empty!4823)))

(declare-fun b!200019 () Bool)

(assert (=> b!200019 (= e!131212 (and e!131211 mapRes!8303))))

(declare-fun condMapEmpty!8303 () Bool)

(declare-fun mapDefault!8303 () ValueCell!2068)

