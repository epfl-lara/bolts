; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83856 () Bool)

(assert start!83856)

(declare-fun b_free!19637 () Bool)

(declare-fun b_next!19637 () Bool)

(assert (=> start!83856 (= b_free!19637 (not b_next!19637))))

(declare-fun tp!68353 () Bool)

(declare-fun b_and!31381 () Bool)

(assert (=> start!83856 (= tp!68353 b_and!31381)))

(declare-fun b!979041 () Bool)

(declare-fun e!551936 () Bool)

(declare-fun tp_is_empty!22631 () Bool)

(assert (=> b!979041 (= e!551936 tp_is_empty!22631)))

(declare-fun mapIsEmpty!35975 () Bool)

(declare-fun mapRes!35975 () Bool)

(assert (=> mapIsEmpty!35975 mapRes!35975))

(declare-fun b!979042 () Bool)

(declare-fun e!551934 () Bool)

(assert (=> b!979042 (= e!551934 tp_is_empty!22631)))

(declare-fun mapNonEmpty!35975 () Bool)

(declare-fun tp!68354 () Bool)

(assert (=> mapNonEmpty!35975 (= mapRes!35975 (and tp!68354 e!551936))))

(declare-fun mapKey!35975 () (_ BitVec 32))

(declare-datatypes ((V!35157 0))(
  ( (V!35158 (val!11366 Int)) )
))
(declare-datatypes ((ValueCell!10834 0))(
  ( (ValueCellFull!10834 (v!13928 V!35157)) (EmptyCell!10834) )
))
(declare-datatypes ((array!61275 0))(
  ( (array!61276 (arr!29491 (Array (_ BitVec 32) ValueCell!10834)) (size!29971 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61275)

(declare-fun mapRest!35975 () (Array (_ BitVec 32) ValueCell!10834))

(declare-fun mapValue!35975 () ValueCell!10834)

(assert (=> mapNonEmpty!35975 (= (arr!29491 _values!1278) (store mapRest!35975 mapKey!35975 mapValue!35975))))

(declare-fun b!979043 () Bool)

(declare-fun e!551933 () Bool)

(declare-fun e!551932 () Bool)

(assert (=> b!979043 (= e!551933 (not e!551932))))

(declare-fun res!655313 () Bool)

(assert (=> b!979043 (=> res!655313 e!551932)))

(declare-datatypes ((array!61277 0))(
  ( (array!61278 (arr!29492 (Array (_ BitVec 32) (_ BitVec 64))) (size!29972 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61277)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979043 (= res!655313 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29492 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14674 0))(
  ( (tuple2!14675 (_1!7347 (_ BitVec 64)) (_2!7347 V!35157)) )
))
(declare-fun lt!434190 () tuple2!14674)

(declare-fun lt!434187 () tuple2!14674)

(declare-datatypes ((List!20572 0))(
  ( (Nil!20569) (Cons!20568 (h!21730 tuple2!14674) (t!29173 List!20572)) )
))
(declare-datatypes ((ListLongMap!13385 0))(
  ( (ListLongMap!13386 (toList!6708 List!20572)) )
))
(declare-fun lt!434188 () ListLongMap!13385)

(declare-fun lt!434189 () ListLongMap!13385)

(declare-fun +!2914 (ListLongMap!13385 tuple2!14674) ListLongMap!13385)

(assert (=> b!979043 (= (+!2914 lt!434188 lt!434187) (+!2914 lt!434189 lt!434190))))

(declare-fun lt!434186 () ListLongMap!13385)

(assert (=> b!979043 (= lt!434189 (+!2914 lt!434186 lt!434187))))

(declare-fun lt!434193 () V!35157)

(assert (=> b!979043 (= lt!434187 (tuple2!14675 (select (arr!29492 _keys!1544) from!1932) lt!434193))))

(assert (=> b!979043 (= lt!434188 (+!2914 lt!434186 lt!434190))))

(declare-fun minValue!1220 () V!35157)

(assert (=> b!979043 (= lt!434190 (tuple2!14675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32503 0))(
  ( (Unit!32504) )
))
(declare-fun lt!434194 () Unit!32503)

(declare-fun addCommutativeForDiffKeys!576 (ListLongMap!13385 (_ BitVec 64) V!35157 (_ BitVec 64) V!35157) Unit!32503)

(assert (=> b!979043 (= lt!434194 (addCommutativeForDiffKeys!576 lt!434186 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29492 _keys!1544) from!1932) lt!434193))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15293 (ValueCell!10834 V!35157) V!35157)

(declare-fun dynLambda!1750 (Int (_ BitVec 64)) V!35157)

(assert (=> b!979043 (= lt!434193 (get!15293 (select (arr!29491 _values!1278) from!1932) (dynLambda!1750 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434192 () ListLongMap!13385)

(declare-fun lt!434191 () tuple2!14674)

(assert (=> b!979043 (= lt!434186 (+!2914 lt!434192 lt!434191))))

(declare-fun zeroValue!1220 () V!35157)

(assert (=> b!979043 (= lt!434191 (tuple2!14675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3375 (array!61277 array!61275 (_ BitVec 32) (_ BitVec 32) V!35157 V!35157 (_ BitVec 32) Int) ListLongMap!13385)

(assert (=> b!979043 (= lt!434192 (getCurrentListMapNoExtraKeys!3375 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979044 () Bool)

(declare-fun res!655308 () Bool)

(assert (=> b!979044 (=> (not res!655308) (not e!551933))))

(assert (=> b!979044 (= res!655308 (and (= (size!29971 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29972 _keys!1544) (size!29971 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979045 () Bool)

(declare-fun e!551935 () Bool)

(assert (=> b!979045 (= e!551935 (and e!551934 mapRes!35975))))

(declare-fun condMapEmpty!35975 () Bool)

(declare-fun mapDefault!35975 () ValueCell!10834)

