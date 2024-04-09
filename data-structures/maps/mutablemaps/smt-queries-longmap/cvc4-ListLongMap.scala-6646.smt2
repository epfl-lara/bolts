; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83880 () Bool)

(assert start!83880)

(declare-fun b_free!19661 () Bool)

(declare-fun b_next!19661 () Bool)

(assert (=> start!83880 (= b_free!19661 (not b_next!19661))))

(declare-fun tp!68425 () Bool)

(declare-fun b_and!31429 () Bool)

(assert (=> start!83880 (= tp!68425 b_and!31429)))

(declare-fun b!979461 () Bool)

(declare-fun res!655595 () Bool)

(declare-fun e!552151 () Bool)

(assert (=> b!979461 (=> (not res!655595) (not e!552151))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61323 0))(
  ( (array!61324 (arr!29515 (Array (_ BitVec 32) (_ BitVec 64))) (size!29995 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61323)

(assert (=> b!979461 (= res!655595 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29995 _keys!1544))))))

(declare-fun b!979462 () Bool)

(declare-fun res!655602 () Bool)

(assert (=> b!979462 (=> (not res!655602) (not e!552151))))

(declare-datatypes ((List!20588 0))(
  ( (Nil!20585) (Cons!20584 (h!21746 (_ BitVec 64)) (t!29213 List!20588)) )
))
(declare-fun arrayNoDuplicates!0 (array!61323 (_ BitVec 32) List!20588) Bool)

(assert (=> b!979462 (= res!655602 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20585))))

(declare-fun b!979463 () Bool)

(declare-fun res!655598 () Bool)

(assert (=> b!979463 (=> (not res!655598) (not e!552151))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35189 0))(
  ( (V!35190 (val!11378 Int)) )
))
(declare-datatypes ((ValueCell!10846 0))(
  ( (ValueCellFull!10846 (v!13940 V!35189)) (EmptyCell!10846) )
))
(declare-datatypes ((array!61325 0))(
  ( (array!61326 (arr!29516 (Array (_ BitVec 32) ValueCell!10846)) (size!29996 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61325)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979463 (= res!655598 (and (= (size!29996 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29995 _keys!1544) (size!29996 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979464 () Bool)

(declare-fun res!655596 () Bool)

(assert (=> b!979464 (=> (not res!655596) (not e!552151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979464 (= res!655596 (validKeyInArray!0 (select (arr!29515 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36011 () Bool)

(declare-fun mapRes!36011 () Bool)

(declare-fun tp!68426 () Bool)

(declare-fun e!552149 () Bool)

(assert (=> mapNonEmpty!36011 (= mapRes!36011 (and tp!68426 e!552149))))

(declare-fun mapValue!36011 () ValueCell!10846)

(declare-fun mapKey!36011 () (_ BitVec 32))

(declare-fun mapRest!36011 () (Array (_ BitVec 32) ValueCell!10846))

(assert (=> mapNonEmpty!36011 (= (arr!29516 _values!1278) (store mapRest!36011 mapKey!36011 mapValue!36011))))

(declare-fun b!979465 () Bool)

(declare-fun e!552147 () Bool)

(assert (=> b!979465 (= e!552151 (not e!552147))))

(declare-fun res!655601 () Bool)

(assert (=> b!979465 (=> res!655601 e!552147)))

(assert (=> b!979465 (= res!655601 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29515 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14694 0))(
  ( (tuple2!14695 (_1!7357 (_ BitVec 64)) (_2!7357 V!35189)) )
))
(declare-datatypes ((List!20589 0))(
  ( (Nil!20586) (Cons!20585 (h!21747 tuple2!14694) (t!29214 List!20589)) )
))
(declare-datatypes ((ListLongMap!13405 0))(
  ( (ListLongMap!13406 (toList!6718 List!20589)) )
))
(declare-fun lt!434548 () ListLongMap!13405)

(declare-fun lt!434553 () ListLongMap!13405)

(declare-fun lt!434545 () tuple2!14694)

(declare-fun lt!434552 () tuple2!14694)

(declare-fun +!2924 (ListLongMap!13405 tuple2!14694) ListLongMap!13405)

(assert (=> b!979465 (= (+!2924 lt!434553 lt!434552) (+!2924 lt!434548 lt!434545))))

(declare-fun lt!434550 () ListLongMap!13405)

(assert (=> b!979465 (= lt!434548 (+!2924 lt!434550 lt!434552))))

(declare-fun lt!434551 () V!35189)

(assert (=> b!979465 (= lt!434552 (tuple2!14695 (select (arr!29515 _keys!1544) from!1932) lt!434551))))

(assert (=> b!979465 (= lt!434553 (+!2924 lt!434550 lt!434545))))

(declare-fun minValue!1220 () V!35189)

(assert (=> b!979465 (= lt!434545 (tuple2!14695 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32523 0))(
  ( (Unit!32524) )
))
(declare-fun lt!434549 () Unit!32523)

(declare-fun addCommutativeForDiffKeys!586 (ListLongMap!13405 (_ BitVec 64) V!35189 (_ BitVec 64) V!35189) Unit!32523)

(assert (=> b!979465 (= lt!434549 (addCommutativeForDiffKeys!586 lt!434550 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29515 _keys!1544) from!1932) lt!434551))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15310 (ValueCell!10846 V!35189) V!35189)

(declare-fun dynLambda!1759 (Int (_ BitVec 64)) V!35189)

(assert (=> b!979465 (= lt!434551 (get!15310 (select (arr!29516 _values!1278) from!1932) (dynLambda!1759 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434546 () ListLongMap!13405)

(declare-fun lt!434547 () tuple2!14694)

(assert (=> b!979465 (= lt!434550 (+!2924 lt!434546 lt!434547))))

(declare-fun zeroValue!1220 () V!35189)

(assert (=> b!979465 (= lt!434547 (tuple2!14695 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3384 (array!61323 array!61325 (_ BitVec 32) (_ BitVec 32) V!35189 V!35189 (_ BitVec 32) Int) ListLongMap!13405)

(assert (=> b!979465 (= lt!434546 (getCurrentListMapNoExtraKeys!3384 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979466 () Bool)

(declare-fun e!552150 () Bool)

(declare-fun tp_is_empty!22655 () Bool)

(assert (=> b!979466 (= e!552150 tp_is_empty!22655)))

(declare-fun b!979467 () Bool)

(declare-fun e!552152 () Bool)

(assert (=> b!979467 (= e!552152 (and e!552150 mapRes!36011))))

(declare-fun condMapEmpty!36011 () Bool)

(declare-fun mapDefault!36011 () ValueCell!10846)

