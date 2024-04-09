; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100590 () Bool)

(assert start!100590)

(declare-fun b_free!25877 () Bool)

(declare-fun b_next!25877 () Bool)

(assert (=> start!100590 (= b_free!25877 (not b_next!25877))))

(declare-fun tp!90622 () Bool)

(declare-fun b_and!42655 () Bool)

(assert (=> start!100590 (= tp!90622 b_and!42655)))

(declare-fun b!1202305 () Bool)

(declare-fun res!800326 () Bool)

(declare-fun e!682769 () Bool)

(assert (=> b!1202305 (=> (not res!800326) (not e!682769))))

(declare-datatypes ((array!77912 0))(
  ( (array!77913 (arr!37597 (Array (_ BitVec 32) (_ BitVec 64))) (size!38134 (_ BitVec 32))) )
))
(declare-fun lt!544905 () array!77912)

(declare-datatypes ((List!26631 0))(
  ( (Nil!26628) (Cons!26627 (h!27836 (_ BitVec 64)) (t!39495 List!26631)) )
))
(declare-fun arrayNoDuplicates!0 (array!77912 (_ BitVec 32) List!26631) Bool)

(assert (=> b!1202305 (= res!800326 (arrayNoDuplicates!0 lt!544905 #b00000000000000000000000000000000 Nil!26628))))

(declare-fun bm!57720 () Bool)

(declare-fun call!57723 () Bool)

(declare-fun call!57728 () Bool)

(assert (=> bm!57720 (= call!57723 call!57728)))

(declare-datatypes ((V!45901 0))(
  ( (V!45902 (val!15347 Int)) )
))
(declare-fun zeroValue!944 () V!45901)

(declare-fun _keys!1208 () array!77912)

(declare-fun bm!57721 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!19802 0))(
  ( (tuple2!19803 (_1!9911 (_ BitVec 64)) (_2!9911 V!45901)) )
))
(declare-datatypes ((List!26632 0))(
  ( (Nil!26629) (Cons!26628 (h!27837 tuple2!19802) (t!39496 List!26632)) )
))
(declare-datatypes ((ListLongMap!17783 0))(
  ( (ListLongMap!17784 (toList!8907 List!26632)) )
))
(declare-fun call!57727 () ListLongMap!17783)

(declare-datatypes ((ValueCell!14581 0))(
  ( (ValueCellFull!14581 (v!17986 V!45901)) (EmptyCell!14581) )
))
(declare-datatypes ((array!77914 0))(
  ( (array!77915 (arr!37598 (Array (_ BitVec 32) ValueCell!14581)) (size!38135 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77914)

(declare-fun minValue!944 () V!45901)

(declare-fun getCurrentListMapNoExtraKeys!5318 (array!77912 array!77914 (_ BitVec 32) (_ BitVec 32) V!45901 V!45901 (_ BitVec 32) Int) ListLongMap!17783)

(assert (=> bm!57721 (= call!57727 (getCurrentListMapNoExtraKeys!5318 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202306 () Bool)

(declare-fun res!800334 () Bool)

(declare-fun e!682772 () Bool)

(assert (=> b!1202306 (=> (not res!800334) (not e!682772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202306 (= res!800334 (validMask!0 mask!1564))))

(declare-fun b!1202307 () Bool)

(declare-fun e!682768 () Bool)

(declare-fun e!682774 () Bool)

(assert (=> b!1202307 (= e!682768 e!682774)))

(declare-fun res!800330 () Bool)

(assert (=> b!1202307 (=> res!800330 e!682774)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202307 (= res!800330 (not (= from!1455 i!673)))))

(declare-fun lt!544914 () ListLongMap!17783)

(declare-fun lt!544910 () array!77914)

(assert (=> b!1202307 (= lt!544914 (getCurrentListMapNoExtraKeys!5318 lt!544905 lt!544910 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3243 (Int (_ BitVec 64)) V!45901)

(assert (=> b!1202307 (= lt!544910 (array!77915 (store (arr!37598 _values!996) i!673 (ValueCellFull!14581 (dynLambda!3243 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38135 _values!996)))))

(declare-fun lt!544913 () ListLongMap!17783)

(assert (=> b!1202307 (= lt!544913 (getCurrentListMapNoExtraKeys!5318 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1202308 () Bool)

(declare-fun e!682767 () Bool)

(declare-fun tp_is_empty!30581 () Bool)

(assert (=> b!1202308 (= e!682767 tp_is_empty!30581)))

(declare-fun b!1202309 () Bool)

(declare-fun res!800328 () Bool)

(assert (=> b!1202309 (=> (not res!800328) (not e!682772))))

(assert (=> b!1202309 (= res!800328 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26628))))

(declare-fun b!1202310 () Bool)

(declare-datatypes ((Unit!39783 0))(
  ( (Unit!39784) )
))
(declare-fun e!682773 () Unit!39783)

(declare-fun lt!544907 () Unit!39783)

(assert (=> b!1202310 (= e!682773 lt!544907)))

(declare-fun lt!544918 () Unit!39783)

(declare-fun call!57726 () Unit!39783)

(assert (=> b!1202310 (= lt!544918 call!57726)))

(declare-fun lt!544912 () ListLongMap!17783)

(declare-fun lt!544911 () ListLongMap!17783)

(declare-fun +!3945 (ListLongMap!17783 tuple2!19802) ListLongMap!17783)

(assert (=> b!1202310 (= lt!544912 (+!3945 lt!544911 (tuple2!19803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1202310 call!57728))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun addStillContains!1007 (ListLongMap!17783 (_ BitVec 64) V!45901 (_ BitVec 64)) Unit!39783)

(assert (=> b!1202310 (= lt!544907 (addStillContains!1007 lt!544912 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!57730 () ListLongMap!17783)

(declare-fun contains!6907 (ListLongMap!17783 (_ BitVec 64)) Bool)

(assert (=> b!1202310 (contains!6907 call!57730 k!934)))

(declare-fun b!1202311 () Bool)

(declare-fun e!682775 () Bool)

(declare-fun call!57725 () ListLongMap!17783)

(assert (=> b!1202311 (= e!682775 (= call!57725 call!57727))))

(declare-fun b!1202312 () Bool)

(declare-fun res!800332 () Bool)

(assert (=> b!1202312 (=> (not res!800332) (not e!682772))))

(assert (=> b!1202312 (= res!800332 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38134 _keys!1208))))))

(declare-fun b!1202313 () Bool)

(declare-fun res!800337 () Bool)

(assert (=> b!1202313 (=> (not res!800337) (not e!682772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77912 (_ BitVec 32)) Bool)

(assert (=> b!1202313 (= res!800337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202314 () Bool)

(declare-fun res!800335 () Bool)

(assert (=> b!1202314 (=> (not res!800335) (not e!682772))))

(assert (=> b!1202314 (= res!800335 (= (select (arr!37597 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47714 () Bool)

(declare-fun mapRes!47714 () Bool)

(assert (=> mapIsEmpty!47714 mapRes!47714))

(declare-fun bm!57722 () Bool)

(declare-fun call!57729 () ListLongMap!17783)

(assert (=> bm!57722 (= call!57729 call!57730)))

(declare-fun b!1202315 () Bool)

(declare-fun res!800329 () Bool)

(assert (=> b!1202315 (=> (not res!800329) (not e!682772))))

(assert (=> b!1202315 (= res!800329 (and (= (size!38135 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38134 _keys!1208) (size!38135 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun c!117608 () Bool)

(declare-fun c!117607 () Bool)

(declare-fun bm!57723 () Bool)

(assert (=> bm!57723 (= call!57730 (+!3945 (ite c!117607 lt!544912 lt!544911) (ite c!117607 (tuple2!19803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117608 (tuple2!19803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1202316 () Bool)

(declare-fun e!682771 () Unit!39783)

(declare-fun lt!544917 () Unit!39783)

(assert (=> b!1202316 (= e!682771 lt!544917)))

(declare-fun call!57724 () Unit!39783)

(assert (=> b!1202316 (= lt!544917 call!57724)))

(assert (=> b!1202316 call!57723))

(declare-fun bm!57724 () Bool)

(assert (=> bm!57724 (= call!57724 call!57726)))

(declare-fun res!800333 () Bool)

(assert (=> start!100590 (=> (not res!800333) (not e!682772))))

(assert (=> start!100590 (= res!800333 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38134 _keys!1208))))))

(assert (=> start!100590 e!682772))

(assert (=> start!100590 tp_is_empty!30581))

(declare-fun array_inv!28540 (array!77912) Bool)

(assert (=> start!100590 (array_inv!28540 _keys!1208)))

(assert (=> start!100590 true))

(assert (=> start!100590 tp!90622))

(declare-fun e!682780 () Bool)

(declare-fun array_inv!28541 (array!77914) Bool)

(assert (=> start!100590 (and (array_inv!28541 _values!996) e!682780)))

(declare-fun b!1202317 () Bool)

(declare-fun c!117609 () Bool)

(declare-fun lt!544909 () Bool)

(assert (=> b!1202317 (= c!117609 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544909))))

(declare-fun e!682770 () Unit!39783)

(assert (=> b!1202317 (= e!682770 e!682771)))

(declare-fun b!1202318 () Bool)

(declare-fun e!682778 () Bool)

(assert (=> b!1202318 (= e!682778 true)))

(declare-fun lt!544906 () Unit!39783)

(assert (=> b!1202318 (= lt!544906 e!682773)))

(assert (=> b!1202318 (= c!117607 (and (not lt!544909) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202318 (= lt!544909 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202319 () Bool)

(assert (=> b!1202319 (= e!682773 e!682770)))

(assert (=> b!1202319 (= c!117608 (and (not lt!544909) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202320 () Bool)

(assert (=> b!1202320 (= e!682772 e!682769)))

(declare-fun res!800325 () Bool)

(assert (=> b!1202320 (=> (not res!800325) (not e!682769))))

(assert (=> b!1202320 (= res!800325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544905 mask!1564))))

(assert (=> b!1202320 (= lt!544905 (array!77913 (store (arr!37597 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38134 _keys!1208)))))

(declare-fun b!1202321 () Bool)

(assert (=> b!1202321 (= e!682780 (and e!682767 mapRes!47714))))

(declare-fun condMapEmpty!47714 () Bool)

(declare-fun mapDefault!47714 () ValueCell!14581)

