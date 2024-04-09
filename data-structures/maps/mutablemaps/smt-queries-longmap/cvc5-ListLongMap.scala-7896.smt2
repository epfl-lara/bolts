; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98156 () Bool)

(assert start!98156)

(declare-fun b_free!23821 () Bool)

(declare-fun b_next!23821 () Bool)

(assert (=> start!98156 (= b_free!23821 (not b_next!23821))))

(declare-fun tp!84168 () Bool)

(declare-fun b_and!38447 () Bool)

(assert (=> start!98156 (= tp!84168 b_and!38447)))

(declare-fun b!1127561 () Bool)

(declare-fun res!753587 () Bool)

(declare-fun e!641813 () Bool)

(assert (=> b!1127561 (=> (not res!753587) (not e!641813))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127561 (= res!753587 (validKeyInArray!0 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!42929 0))(
  ( (V!42930 (val!14232 Int)) )
))
(declare-datatypes ((tuple2!17992 0))(
  ( (tuple2!17993 (_1!9006 (_ BitVec 64)) (_2!9006 V!42929)) )
))
(declare-datatypes ((List!24817 0))(
  ( (Nil!24814) (Cons!24813 (h!26022 tuple2!17992) (t!35637 List!24817)) )
))
(declare-datatypes ((ListLongMap!15973 0))(
  ( (ListLongMap!15974 (toList!8002 List!24817)) )
))
(declare-fun call!47747 () ListLongMap!15973)

(declare-datatypes ((array!73522 0))(
  ( (array!73523 (arr!35410 (Array (_ BitVec 32) (_ BitVec 64))) (size!35947 (_ BitVec 32))) )
))
(declare-fun lt!500621 () array!73522)

(declare-fun minValue!944 () V!42929)

(declare-fun zeroValue!944 () V!42929)

(declare-fun bm!47743 () Bool)

(declare-datatypes ((ValueCell!13466 0))(
  ( (ValueCellFull!13466 (v!16866 V!42929)) (EmptyCell!13466) )
))
(declare-datatypes ((array!73524 0))(
  ( (array!73525 (arr!35411 (Array (_ BitVec 32) ValueCell!13466)) (size!35948 (_ BitVec 32))) )
))
(declare-fun lt!500623 () array!73524)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4460 (array!73522 array!73524 (_ BitVec 32) (_ BitVec 32) V!42929 V!42929 (_ BitVec 32) Int) ListLongMap!15973)

(assert (=> bm!47743 (= call!47747 (getCurrentListMapNoExtraKeys!4460 lt!500621 lt!500623 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127562 () Bool)

(declare-fun res!753581 () Bool)

(assert (=> b!1127562 (=> (not res!753581) (not e!641813))))

(declare-fun _keys!1208 () array!73522)

(declare-datatypes ((List!24818 0))(
  ( (Nil!24815) (Cons!24814 (h!26023 (_ BitVec 64)) (t!35638 List!24818)) )
))
(declare-fun arrayNoDuplicates!0 (array!73522 (_ BitVec 32) List!24818) Bool)

(assert (=> b!1127562 (= res!753581 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24815))))

(declare-fun b!1127563 () Bool)

(declare-fun res!753589 () Bool)

(assert (=> b!1127563 (=> (not res!753589) (not e!641813))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127563 (= res!753589 (= (select (arr!35410 _keys!1208) i!673) k!934))))

(declare-fun b!1127564 () Bool)

(declare-fun e!641807 () Bool)

(declare-fun call!47746 () ListLongMap!15973)

(assert (=> b!1127564 (= e!641807 (= call!47747 call!47746))))

(declare-fun b!1127565 () Bool)

(declare-fun res!753588 () Bool)

(assert (=> b!1127565 (=> (not res!753588) (not e!641813))))

(declare-fun _values!996 () array!73524)

(assert (=> b!1127565 (= res!753588 (and (= (size!35948 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35947 _keys!1208) (size!35948 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127566 () Bool)

(declare-fun e!641808 () Bool)

(assert (=> b!1127566 (= e!641813 e!641808)))

(declare-fun res!753584 () Bool)

(assert (=> b!1127566 (=> (not res!753584) (not e!641808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73522 (_ BitVec 32)) Bool)

(assert (=> b!1127566 (= res!753584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500621 mask!1564))))

(assert (=> b!1127566 (= lt!500621 (array!73523 (store (arr!35410 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35947 _keys!1208)))))

(declare-fun b!1127567 () Bool)

(declare-fun res!753582 () Bool)

(assert (=> b!1127567 (=> (not res!753582) (not e!641813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127567 (= res!753582 (validMask!0 mask!1564))))

(declare-fun b!1127568 () Bool)

(declare-fun e!641812 () Bool)

(declare-fun e!641809 () Bool)

(declare-fun mapRes!44344 () Bool)

(assert (=> b!1127568 (= e!641812 (and e!641809 mapRes!44344))))

(declare-fun condMapEmpty!44344 () Bool)

(declare-fun mapDefault!44344 () ValueCell!13466)

