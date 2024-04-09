; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100330 () Bool)

(assert start!100330)

(declare-fun b_free!25681 () Bool)

(declare-fun b_next!25681 () Bool)

(assert (=> start!100330 (= b_free!25681 (not b_next!25681))))

(declare-fun tp!89992 () Bool)

(declare-fun b_and!42243 () Bool)

(assert (=> start!100330 (= tp!89992 b_and!42243)))

(declare-fun b!1196549 () Bool)

(declare-fun e!679855 () Bool)

(declare-fun tp_is_empty!30361 () Bool)

(assert (=> b!1196549 (= e!679855 tp_is_empty!30361)))

(declare-fun mapNonEmpty!47378 () Bool)

(declare-fun mapRes!47378 () Bool)

(declare-fun tp!89991 () Bool)

(declare-fun e!679857 () Bool)

(assert (=> mapNonEmpty!47378 (= mapRes!47378 (and tp!89991 e!679857))))

(declare-fun mapKey!47378 () (_ BitVec 32))

(declare-datatypes ((V!45609 0))(
  ( (V!45610 (val!15237 Int)) )
))
(declare-datatypes ((ValueCell!14471 0))(
  ( (ValueCellFull!14471 (v!17876 V!45609)) (EmptyCell!14471) )
))
(declare-fun mapRest!47378 () (Array (_ BitVec 32) ValueCell!14471))

(declare-fun mapValue!47378 () ValueCell!14471)

(declare-datatypes ((array!77482 0))(
  ( (array!77483 (arr!37384 (Array (_ BitVec 32) ValueCell!14471)) (size!37921 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77482)

(assert (=> mapNonEmpty!47378 (= (arr!37384 _values!996) (store mapRest!47378 mapKey!47378 mapValue!47378))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45609)

(declare-fun zeroValue!944 () V!45609)

(declare-datatypes ((tuple2!19646 0))(
  ( (tuple2!19647 (_1!9833 (_ BitVec 64)) (_2!9833 V!45609)) )
))
(declare-datatypes ((List!26464 0))(
  ( (Nil!26461) (Cons!26460 (h!27669 tuple2!19646) (t!39144 List!26464)) )
))
(declare-datatypes ((ListLongMap!17627 0))(
  ( (ListLongMap!17628 (toList!8829 List!26464)) )
))
(declare-fun call!57164 () ListLongMap!17627)

(declare-fun bm!57160 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77484 0))(
  ( (array!77485 (arr!37385 (Array (_ BitVec 32) (_ BitVec 64))) (size!37922 (_ BitVec 32))) )
))
(declare-fun lt!543057 () array!77484)

(declare-fun getCurrentListMapNoExtraKeys!5243 (array!77484 array!77482 (_ BitVec 32) (_ BitVec 32) V!45609 V!45609 (_ BitVec 32) Int) ListLongMap!17627)

(declare-fun dynLambda!3180 (Int (_ BitVec 64)) V!45609)

(assert (=> bm!57160 (= call!57164 (getCurrentListMapNoExtraKeys!5243 lt!543057 (array!77483 (store (arr!37384 _values!996) i!673 (ValueCellFull!14471 (dynLambda!3180 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37921 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196550 () Bool)

(declare-fun e!679858 () Bool)

(assert (=> b!1196550 (= e!679858 (and e!679855 mapRes!47378))))

(declare-fun condMapEmpty!47378 () Bool)

(declare-fun mapDefault!47378 () ValueCell!14471)

