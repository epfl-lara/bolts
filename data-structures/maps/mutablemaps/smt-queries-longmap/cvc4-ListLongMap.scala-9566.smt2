; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113298 () Bool)

(assert start!113298)

(declare-fun b_free!31313 () Bool)

(declare-fun b_next!31313 () Bool)

(assert (=> start!113298 (= b_free!31313 (not b_next!31313))))

(declare-fun tp!109744 () Bool)

(declare-fun b_and!50543 () Bool)

(assert (=> start!113298 (= tp!109744 b_and!50543)))

(declare-fun b!1343740 () Bool)

(declare-fun res!891649 () Bool)

(declare-fun e!764798 () Bool)

(assert (=> b!1343740 (=> (not res!891649) (not e!764798))))

(declare-datatypes ((V!54853 0))(
  ( (V!54854 (val!18731 Int)) )
))
(declare-fun minValue!1245 () V!54853)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91425 0))(
  ( (array!91426 (arr!44164 (Array (_ BitVec 32) (_ BitVec 64))) (size!44715 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91425)

(declare-fun zeroValue!1245 () V!54853)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17758 0))(
  ( (ValueCellFull!17758 (v!21377 V!54853)) (EmptyCell!17758) )
))
(declare-datatypes ((array!91427 0))(
  ( (array!91428 (arr!44165 (Array (_ BitVec 32) ValueCell!17758)) (size!44716 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91427)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24286 0))(
  ( (tuple2!24287 (_1!12153 (_ BitVec 64)) (_2!12153 V!54853)) )
))
(declare-datatypes ((List!31460 0))(
  ( (Nil!31457) (Cons!31456 (h!32665 tuple2!24286) (t!45991 List!31460)) )
))
(declare-datatypes ((ListLongMap!21955 0))(
  ( (ListLongMap!21956 (toList!10993 List!31460)) )
))
(declare-fun contains!9105 (ListLongMap!21955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5886 (array!91425 array!91427 (_ BitVec 32) (_ BitVec 32) V!54853 V!54853 (_ BitVec 32) Int) ListLongMap!21955)

(assert (=> b!1343740 (= res!891649 (contains!9105 (getCurrentListMap!5886 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57676 () Bool)

(declare-fun mapRes!57676 () Bool)

(assert (=> mapIsEmpty!57676 mapRes!57676))

(declare-fun b!1343741 () Bool)

(declare-fun res!891645 () Bool)

(assert (=> b!1343741 (=> (not res!891645) (not e!764798))))

(assert (=> b!1343741 (= res!891645 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44715 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343742 () Bool)

(declare-fun res!891650 () Bool)

(assert (=> b!1343742 (=> (not res!891650) (not e!764798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343742 (= res!891650 (validKeyInArray!0 (select (arr!44164 _keys!1571) from!1960)))))

(declare-fun b!1343743 () Bool)

(assert (=> b!1343743 (= e!764798 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!595048 () ListLongMap!21955)

(declare-fun +!4789 (ListLongMap!21955 tuple2!24286) ListLongMap!21955)

(assert (=> b!1343743 (contains!9105 (+!4789 lt!595048 (tuple2!24287 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44043 0))(
  ( (Unit!44044) )
))
(declare-fun lt!595051 () Unit!44043)

(declare-fun addStillContains!1215 (ListLongMap!21955 (_ BitVec 64) V!54853 (_ BitVec 64)) Unit!44043)

(assert (=> b!1343743 (= lt!595051 (addStillContains!1215 lt!595048 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343743 (contains!9105 lt!595048 k!1142)))

(declare-fun lt!595050 () V!54853)

(declare-fun lt!595046 () Unit!44043)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!381 ((_ BitVec 64) (_ BitVec 64) V!54853 ListLongMap!21955) Unit!44043)

(assert (=> b!1343743 (= lt!595046 (lemmaInListMapAfterAddingDiffThenInBefore!381 k!1142 (select (arr!44164 _keys!1571) from!1960) lt!595050 lt!595048))))

(declare-fun lt!595047 () ListLongMap!21955)

(assert (=> b!1343743 (contains!9105 lt!595047 k!1142)))

(declare-fun lt!595049 () Unit!44043)

(assert (=> b!1343743 (= lt!595049 (lemmaInListMapAfterAddingDiffThenInBefore!381 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595047))))

(assert (=> b!1343743 (= lt!595047 (+!4789 lt!595048 (tuple2!24287 (select (arr!44164 _keys!1571) from!1960) lt!595050)))))

(declare-fun get!22354 (ValueCell!17758 V!54853) V!54853)

(declare-fun dynLambda!3826 (Int (_ BitVec 64)) V!54853)

(assert (=> b!1343743 (= lt!595050 (get!22354 (select (arr!44165 _values!1303) from!1960) (dynLambda!3826 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6512 (array!91425 array!91427 (_ BitVec 32) (_ BitVec 32) V!54853 V!54853 (_ BitVec 32) Int) ListLongMap!21955)

(assert (=> b!1343743 (= lt!595048 (getCurrentListMapNoExtraKeys!6512 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343744 () Bool)

(declare-fun res!891644 () Bool)

(assert (=> b!1343744 (=> (not res!891644) (not e!764798))))

(assert (=> b!1343744 (= res!891644 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343745 () Bool)

(declare-fun e!764797 () Bool)

(declare-fun e!764799 () Bool)

(assert (=> b!1343745 (= e!764797 (and e!764799 mapRes!57676))))

(declare-fun condMapEmpty!57676 () Bool)

(declare-fun mapDefault!57676 () ValueCell!17758)

