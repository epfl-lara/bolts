; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20352 () Bool)

(assert start!20352)

(declare-fun b_free!4999 () Bool)

(declare-fun b_next!4999 () Bool)

(assert (=> start!20352 (= b_free!4999 (not b_next!4999))))

(declare-fun tp!18028 () Bool)

(declare-fun b_and!11763 () Bool)

(assert (=> start!20352 (= tp!18028 b_and!11763)))

(declare-fun b!200566 () Bool)

(declare-fun res!95628 () Bool)

(declare-fun e!131519 () Bool)

(assert (=> b!200566 (=> (not res!95628) (not e!131519))))

(declare-datatypes ((array!8940 0))(
  ( (array!8941 (arr!4220 (Array (_ BitVec 32) (_ BitVec 64))) (size!4545 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8940)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6121 0))(
  ( (V!6122 (val!2472 Int)) )
))
(declare-datatypes ((ValueCell!2084 0))(
  ( (ValueCellFull!2084 (v!4438 V!6121)) (EmptyCell!2084) )
))
(declare-datatypes ((array!8942 0))(
  ( (array!8943 (arr!4221 (Array (_ BitVec 32) ValueCell!2084)) (size!4546 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8942)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!200566 (= res!95628 (and (= (size!4546 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4545 _keys!825) (size!4546 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!95625 () Bool)

(assert (=> start!20352 (=> (not res!95625) (not e!131519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20352 (= res!95625 (validMask!0 mask!1149))))

(assert (=> start!20352 e!131519))

(declare-fun e!131523 () Bool)

(declare-fun array_inv!2767 (array!8942) Bool)

(assert (=> start!20352 (and (array_inv!2767 _values!649) e!131523)))

(assert (=> start!20352 true))

(declare-fun tp_is_empty!4855 () Bool)

(assert (=> start!20352 tp_is_empty!4855))

(declare-fun array_inv!2768 (array!8940) Bool)

(assert (=> start!20352 (array_inv!2768 _keys!825)))

(assert (=> start!20352 tp!18028))

(declare-fun b!200567 () Bool)

(declare-fun e!131521 () Bool)

(assert (=> b!200567 (= e!131519 (not e!131521))))

(declare-fun res!95629 () Bool)

(assert (=> b!200567 (=> res!95629 e!131521)))

(assert (=> b!200567 (= res!95629 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6121)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!3732 0))(
  ( (tuple2!3733 (_1!1876 (_ BitVec 64)) (_2!1876 V!6121)) )
))
(declare-datatypes ((List!2673 0))(
  ( (Nil!2670) (Cons!2669 (h!3311 tuple2!3732) (t!7612 List!2673)) )
))
(declare-datatypes ((ListLongMap!2659 0))(
  ( (ListLongMap!2660 (toList!1345 List!2673)) )
))
(declare-fun lt!99290 () ListLongMap!2659)

(declare-fun minValue!615 () V!6121)

(declare-fun getCurrentListMap!930 (array!8940 array!8942 (_ BitVec 32) (_ BitVec 32) V!6121 V!6121 (_ BitVec 32) Int) ListLongMap!2659)

(assert (=> b!200567 (= lt!99290 (getCurrentListMap!930 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99293 () array!8942)

(declare-fun lt!99292 () ListLongMap!2659)

(assert (=> b!200567 (= lt!99292 (getCurrentListMap!930 _keys!825 lt!99293 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99301 () ListLongMap!2659)

(declare-fun lt!99291 () ListLongMap!2659)

(assert (=> b!200567 (and (= lt!99301 lt!99291) (= lt!99291 lt!99301))))

(declare-fun lt!99299 () ListLongMap!2659)

(declare-fun lt!99289 () tuple2!3732)

(declare-fun +!362 (ListLongMap!2659 tuple2!3732) ListLongMap!2659)

(assert (=> b!200567 (= lt!99291 (+!362 lt!99299 lt!99289))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6121)

(assert (=> b!200567 (= lt!99289 (tuple2!3733 k!843 v!520))))

(declare-datatypes ((Unit!6031 0))(
  ( (Unit!6032) )
))
(declare-fun lt!99294 () Unit!6031)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!43 (array!8940 array!8942 (_ BitVec 32) (_ BitVec 32) V!6121 V!6121 (_ BitVec 32) (_ BitVec 64) V!6121 (_ BitVec 32) Int) Unit!6031)

(assert (=> b!200567 (= lt!99294 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!43 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!301 (array!8940 array!8942 (_ BitVec 32) (_ BitVec 32) V!6121 V!6121 (_ BitVec 32) Int) ListLongMap!2659)

(assert (=> b!200567 (= lt!99301 (getCurrentListMapNoExtraKeys!301 _keys!825 lt!99293 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200567 (= lt!99293 (array!8943 (store (arr!4221 _values!649) i!601 (ValueCellFull!2084 v!520)) (size!4546 _values!649)))))

(assert (=> b!200567 (= lt!99299 (getCurrentListMapNoExtraKeys!301 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200568 () Bool)

(declare-fun res!95624 () Bool)

(assert (=> b!200568 (=> (not res!95624) (not e!131519))))

(assert (=> b!200568 (= res!95624 (= (select (arr!4220 _keys!825) i!601) k!843))))

(declare-fun b!200569 () Bool)

(declare-fun res!95632 () Bool)

(assert (=> b!200569 (=> (not res!95632) (not e!131519))))

(assert (=> b!200569 (= res!95632 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4545 _keys!825))))))

(declare-fun b!200570 () Bool)

(declare-fun res!95630 () Bool)

(assert (=> b!200570 (=> (not res!95630) (not e!131519))))

(declare-datatypes ((List!2674 0))(
  ( (Nil!2671) (Cons!2670 (h!3312 (_ BitVec 64)) (t!7613 List!2674)) )
))
(declare-fun arrayNoDuplicates!0 (array!8940 (_ BitVec 32) List!2674) Bool)

(assert (=> b!200570 (= res!95630 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2671))))

(declare-fun b!200571 () Bool)

(declare-fun res!95631 () Bool)

(assert (=> b!200571 (=> (not res!95631) (not e!131519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8940 (_ BitVec 32)) Bool)

(assert (=> b!200571 (= res!95631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8351 () Bool)

(declare-fun mapRes!8351 () Bool)

(declare-fun tp!18029 () Bool)

(declare-fun e!131522 () Bool)

(assert (=> mapNonEmpty!8351 (= mapRes!8351 (and tp!18029 e!131522))))

(declare-fun mapRest!8351 () (Array (_ BitVec 32) ValueCell!2084))

(declare-fun mapValue!8351 () ValueCell!2084)

(declare-fun mapKey!8351 () (_ BitVec 32))

(assert (=> mapNonEmpty!8351 (= (arr!4221 _values!649) (store mapRest!8351 mapKey!8351 mapValue!8351))))

(declare-fun b!200572 () Bool)

(declare-fun e!131520 () Bool)

(assert (=> b!200572 (= e!131523 (and e!131520 mapRes!8351))))

(declare-fun condMapEmpty!8351 () Bool)

(declare-fun mapDefault!8351 () ValueCell!2084)

