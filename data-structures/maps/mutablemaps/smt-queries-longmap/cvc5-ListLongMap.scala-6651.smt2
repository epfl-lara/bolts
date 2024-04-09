; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83906 () Bool)

(assert start!83906)

(declare-fun b_free!19687 () Bool)

(declare-fun b_next!19687 () Bool)

(assert (=> start!83906 (= b_free!19687 (not b_next!19687))))

(declare-fun tp!68503 () Bool)

(declare-fun b_and!31481 () Bool)

(assert (=> start!83906 (= tp!68503 b_and!31481)))

(declare-fun b!979916 () Bool)

(declare-fun e!552384 () Bool)

(declare-fun e!552383 () Bool)

(assert (=> b!979916 (= e!552384 (not e!552383))))

(declare-fun res!655909 () Bool)

(assert (=> b!979916 (=> res!655909 e!552383)))

(declare-datatypes ((array!61371 0))(
  ( (array!61372 (arr!29539 (Array (_ BitVec 32) (_ BitVec 64))) (size!30019 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61371)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979916 (= res!655909 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29539 _keys!1544) from!1932)))))

(declare-datatypes ((V!35225 0))(
  ( (V!35226 (val!11391 Int)) )
))
(declare-datatypes ((tuple2!14714 0))(
  ( (tuple2!14715 (_1!7367 (_ BitVec 64)) (_2!7367 V!35225)) )
))
(declare-fun lt!434938 () tuple2!14714)

(declare-fun lt!434940 () tuple2!14714)

(declare-datatypes ((List!20606 0))(
  ( (Nil!20603) (Cons!20602 (h!21764 tuple2!14714) (t!29257 List!20606)) )
))
(declare-datatypes ((ListLongMap!13425 0))(
  ( (ListLongMap!13426 (toList!6728 List!20606)) )
))
(declare-fun lt!434939 () ListLongMap!13425)

(declare-fun lt!434936 () ListLongMap!13425)

(declare-fun +!2934 (ListLongMap!13425 tuple2!14714) ListLongMap!13425)

(assert (=> b!979916 (= (+!2934 lt!434936 lt!434938) (+!2934 lt!434939 lt!434940))))

(declare-fun lt!434935 () ListLongMap!13425)

(assert (=> b!979916 (= lt!434939 (+!2934 lt!434935 lt!434938))))

(declare-fun lt!434943 () V!35225)

(assert (=> b!979916 (= lt!434938 (tuple2!14715 (select (arr!29539 _keys!1544) from!1932) lt!434943))))

(assert (=> b!979916 (= lt!434936 (+!2934 lt!434935 lt!434940))))

(declare-fun minValue!1220 () V!35225)

(assert (=> b!979916 (= lt!434940 (tuple2!14715 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32543 0))(
  ( (Unit!32544) )
))
(declare-fun lt!434941 () Unit!32543)

(declare-fun addCommutativeForDiffKeys!596 (ListLongMap!13425 (_ BitVec 64) V!35225 (_ BitVec 64) V!35225) Unit!32543)

(assert (=> b!979916 (= lt!434941 (addCommutativeForDiffKeys!596 lt!434935 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29539 _keys!1544) from!1932) lt!434943))))

(declare-datatypes ((ValueCell!10859 0))(
  ( (ValueCellFull!10859 (v!13953 V!35225)) (EmptyCell!10859) )
))
(declare-datatypes ((array!61373 0))(
  ( (array!61374 (arr!29540 (Array (_ BitVec 32) ValueCell!10859)) (size!30020 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61373)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15329 (ValueCell!10859 V!35225) V!35225)

(declare-fun dynLambda!1768 (Int (_ BitVec 64)) V!35225)

(assert (=> b!979916 (= lt!434943 (get!15329 (select (arr!29540 _values!1278) from!1932) (dynLambda!1768 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434944 () ListLongMap!13425)

(declare-fun lt!434942 () tuple2!14714)

(assert (=> b!979916 (= lt!434935 (+!2934 lt!434944 lt!434942))))

(declare-fun zeroValue!1220 () V!35225)

(assert (=> b!979916 (= lt!434942 (tuple2!14715 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3393 (array!61371 array!61373 (_ BitVec 32) (_ BitVec 32) V!35225 V!35225 (_ BitVec 32) Int) ListLongMap!13425)

(assert (=> b!979916 (= lt!434944 (getCurrentListMapNoExtraKeys!3393 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979917 () Bool)

(declare-fun res!655911 () Bool)

(assert (=> b!979917 (=> (not res!655911) (not e!552384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979917 (= res!655911 (validKeyInArray!0 (select (arr!29539 _keys!1544) from!1932)))))

(declare-fun b!979918 () Bool)

(assert (=> b!979918 (= e!552383 true)))

(assert (=> b!979918 (= lt!434939 (+!2934 (+!2934 lt!434944 lt!434938) lt!434942))))

(declare-fun lt!434937 () Unit!32543)

(assert (=> b!979918 (= lt!434937 (addCommutativeForDiffKeys!596 lt!434944 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29539 _keys!1544) from!1932) lt!434943))))

(declare-fun b!979919 () Bool)

(declare-fun res!655907 () Bool)

(assert (=> b!979919 (=> (not res!655907) (not e!552384))))

(assert (=> b!979919 (= res!655907 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979920 () Bool)

(declare-fun res!655913 () Bool)

(assert (=> b!979920 (=> (not res!655913) (not e!552384))))

(assert (=> b!979920 (= res!655913 (and (= (size!30020 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30019 _keys!1544) (size!30020 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979922 () Bool)

(declare-fun res!655908 () Bool)

(assert (=> b!979922 (=> (not res!655908) (not e!552384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61371 (_ BitVec 32)) Bool)

(assert (=> b!979922 (= res!655908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979923 () Bool)

(declare-fun e!552381 () Bool)

(declare-fun e!552382 () Bool)

(declare-fun mapRes!36050 () Bool)

(assert (=> b!979923 (= e!552381 (and e!552382 mapRes!36050))))

(declare-fun condMapEmpty!36050 () Bool)

(declare-fun mapDefault!36050 () ValueCell!10859)

