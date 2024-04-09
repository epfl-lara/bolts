; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5926 () Bool)

(assert start!5926)

(declare-fun b_free!1399 () Bool)

(declare-fun b_next!1399 () Bool)

(assert (=> start!5926 (= b_free!1399 (not b_next!1399))))

(declare-fun tp!5786 () Bool)

(declare-fun b_and!2457 () Bool)

(assert (=> start!5926 (= tp!5786 b_and!2457)))

(declare-fun b!41586 () Bool)

(declare-fun e!26321 () Bool)

(declare-fun e!26322 () Bool)

(assert (=> b!41586 (= e!26321 (not e!26322))))

(declare-fun res!24721 () Bool)

(assert (=> b!41586 (=> res!24721 e!26322)))

(declare-datatypes ((V!2145 0))(
  ( (V!2146 (val!933 Int)) )
))
(declare-datatypes ((tuple2!1524 0))(
  ( (tuple2!1525 (_1!772 (_ BitVec 64)) (_2!772 V!2145)) )
))
(declare-datatypes ((List!1104 0))(
  ( (Nil!1101) (Cons!1100 (h!1677 tuple2!1524) (t!4007 List!1104)) )
))
(declare-datatypes ((ListLongMap!1105 0))(
  ( (ListLongMap!1106 (toList!568 List!1104)) )
))
(declare-fun lt!16557 () ListLongMap!1105)

(assert (=> b!41586 (= res!24721 (= lt!16557 (ListLongMap!1106 Nil!1101)))))

(declare-datatypes ((array!2659 0))(
  ( (array!2660 (arr!1273 (Array (_ BitVec 32) (_ BitVec 64))) (size!1425 (_ BitVec 32))) )
))
(declare-fun lt!16553 () array!2659)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!16558 () V!2145)

(declare-datatypes ((ValueCell!647 0))(
  ( (ValueCellFull!647 (v!2016 V!2145)) (EmptyCell!647) )
))
(declare-datatypes ((array!2661 0))(
  ( (array!2662 (arr!1274 (Array (_ BitVec 32) ValueCell!647)) (size!1426 (_ BitVec 32))) )
))
(declare-fun lt!16556 () array!2661)

(declare-datatypes ((LongMapFixedSize!274 0))(
  ( (LongMapFixedSize!275 (defaultEntry!1827 Int) (mask!5236 (_ BitVec 32)) (extraKeys!1718 (_ BitVec 32)) (zeroValue!1745 V!2145) (minValue!1745 V!2145) (_size!186 (_ BitVec 32)) (_keys!3334 array!2659) (_values!1810 array!2661) (_vacant!186 (_ BitVec 32))) )
))
(declare-fun map!722 (LongMapFixedSize!274) ListLongMap!1105)

(assert (=> b!41586 (= lt!16557 (map!722 (LongMapFixedSize!275 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16558 lt!16558 #b00000000000000000000000000000000 lt!16553 lt!16556 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1105 0))(
  ( (Nil!1102) (Cons!1101 (h!1678 (_ BitVec 64)) (t!4008 List!1105)) )
))
(declare-fun arrayNoDuplicates!0 (array!2659 (_ BitVec 32) List!1105) Bool)

(assert (=> b!41586 (arrayNoDuplicates!0 lt!16553 #b00000000000000000000000000000000 Nil!1102)))

(declare-datatypes ((Unit!1031 0))(
  ( (Unit!1032) )
))
(declare-fun lt!16554 () Unit!1031)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2659 (_ BitVec 32) (_ BitVec 32) List!1105) Unit!1031)

(assert (=> b!41586 (= lt!16554 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16553 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2659 (_ BitVec 32)) Bool)

(assert (=> b!41586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16553 mask!853)))

(declare-fun lt!16551 () Unit!1031)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2659 (_ BitVec 32) (_ BitVec 32)) Unit!1031)

(assert (=> b!41586 (= lt!16551 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16553 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2659 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41586 (= (arrayCountValidKeys!0 lt!16553 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16555 () Unit!1031)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2659 (_ BitVec 32) (_ BitVec 32)) Unit!1031)

(assert (=> b!41586 (= lt!16555 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16553 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41586 (= lt!16556 (array!2662 ((as const (Array (_ BitVec 32) ValueCell!647)) EmptyCell!647) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41586 (= lt!16553 (array!2660 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!208 (Int (_ BitVec 64)) V!2145)

(assert (=> b!41586 (= lt!16558 (dynLambda!208 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41588 () Bool)

(declare-fun res!24718 () Bool)

(assert (=> b!41588 (=> res!24718 e!26322)))

(assert (=> b!41588 (= res!24718 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41587 () Bool)

(declare-fun res!24719 () Bool)

(assert (=> b!41587 (=> res!24719 e!26322)))

(declare-fun isEmpty!253 (List!1104) Bool)

(assert (=> b!41587 (= res!24719 (isEmpty!253 (toList!568 lt!16557)))))

(declare-fun res!24720 () Bool)

(assert (=> start!5926 (=> (not res!24720) (not e!26321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5926 (= res!24720 (validMask!0 mask!853))))

(assert (=> start!5926 e!26321))

(assert (=> start!5926 true))

(assert (=> start!5926 tp!5786))

(declare-fun b!41589 () Bool)

(assert (=> b!41589 (= e!26322 true)))

(declare-fun lt!16552 () Bool)

(declare-fun contains!534 (ListLongMap!1105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!326 (array!2659 array!2661 (_ BitVec 32) (_ BitVec 32) V!2145 V!2145 (_ BitVec 32) Int) ListLongMap!1105)

(declare-fun head!863 (List!1104) tuple2!1524)

(assert (=> b!41589 (= lt!16552 (contains!534 (getCurrentListMap!326 lt!16553 lt!16556 mask!853 #b00000000000000000000000000000000 lt!16558 lt!16558 #b00000000000000000000000000000000 defaultEntry!470) (_1!772 (head!863 (toList!568 lt!16557)))))))

(assert (= (and start!5926 res!24720) b!41586))

(assert (= (and b!41586 (not res!24721)) b!41587))

(assert (= (and b!41587 (not res!24719)) b!41588))

(assert (= (and b!41588 (not res!24718)) b!41589))

(declare-fun b_lambda!2143 () Bool)

(assert (=> (not b_lambda!2143) (not b!41586)))

(declare-fun t!4006 () Bool)

(declare-fun tb!889 () Bool)

(assert (=> (and start!5926 (= defaultEntry!470 defaultEntry!470) t!4006) tb!889))

(declare-fun result!1521 () Bool)

(declare-fun tp_is_empty!1789 () Bool)

(assert (=> tb!889 (= result!1521 tp_is_empty!1789)))

(assert (=> b!41586 t!4006))

(declare-fun b_and!2459 () Bool)

(assert (= b_and!2457 (and (=> t!4006 result!1521) b_and!2459)))

(declare-fun m!34955 () Bool)

(assert (=> b!41586 m!34955))

(declare-fun m!34957 () Bool)

(assert (=> b!41586 m!34957))

(declare-fun m!34959 () Bool)

(assert (=> b!41586 m!34959))

(declare-fun m!34961 () Bool)

(assert (=> b!41586 m!34961))

(declare-fun m!34963 () Bool)

(assert (=> b!41586 m!34963))

(declare-fun m!34965 () Bool)

(assert (=> b!41586 m!34965))

(declare-fun m!34967 () Bool)

(assert (=> b!41586 m!34967))

(declare-fun m!34969 () Bool)

(assert (=> b!41586 m!34969))

(declare-fun m!34971 () Bool)

(assert (=> b!41587 m!34971))

(declare-fun m!34973 () Bool)

(assert (=> start!5926 m!34973))

(declare-fun m!34975 () Bool)

(assert (=> b!41589 m!34975))

(declare-fun m!34977 () Bool)

(assert (=> b!41589 m!34977))

(assert (=> b!41589 m!34975))

(declare-fun m!34979 () Bool)

(assert (=> b!41589 m!34979))

(push 1)

(assert (not b_next!1399))

(assert (not b!41587))

(assert (not b_lambda!2143))

(assert b_and!2459)

(assert (not b!41589))

(assert tp_is_empty!1789)

(assert (not start!5926))

(assert (not b!41586))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2459)

(assert (not b_next!1399))

(check-sat)

(pop 1)

