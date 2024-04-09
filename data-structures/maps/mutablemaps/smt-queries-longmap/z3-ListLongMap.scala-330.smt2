; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6042 () Bool)

(assert start!6042)

(declare-fun b_free!1443 () Bool)

(declare-fun b_next!1443 () Bool)

(assert (=> start!6042 (= b_free!1443 (not b_next!1443))))

(declare-fun tp!5852 () Bool)

(declare-fun b_and!2545 () Bool)

(assert (=> start!6042 (= tp!5852 b_and!2545)))

(declare-fun b!42048 () Bool)

(declare-datatypes ((Unit!1077 0))(
  ( (Unit!1078) )
))
(declare-fun e!26585 () Unit!1077)

(declare-fun Unit!1079 () Unit!1077)

(assert (=> b!42048 (= e!26585 Unit!1079)))

(declare-datatypes ((V!2203 0))(
  ( (V!2204 (val!955 Int)) )
))
(declare-datatypes ((tuple2!1568 0))(
  ( (tuple2!1569 (_1!794 (_ BitVec 64)) (_2!794 V!2203)) )
))
(declare-fun lt!17206 () tuple2!1568)

(declare-datatypes ((List!1148 0))(
  ( (Nil!1145) (Cons!1144 (h!1721 tuple2!1568) (t!4095 List!1148)) )
))
(declare-datatypes ((ListLongMap!1149 0))(
  ( (ListLongMap!1150 (toList!590 List!1148)) )
))
(declare-fun lt!17205 () ListLongMap!1149)

(declare-fun head!885 (List!1148) tuple2!1568)

(assert (=> b!42048 (= lt!17206 (head!885 (toList!590 lt!17205)))))

(declare-fun lt!17200 () V!2203)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!669 0))(
  ( (ValueCellFull!669 (v!2038 V!2203)) (EmptyCell!669) )
))
(declare-datatypes ((array!2747 0))(
  ( (array!2748 (arr!1317 (Array (_ BitVec 32) ValueCell!669)) (size!1475 (_ BitVec 32))) )
))
(declare-fun lt!17198 () array!2747)

(declare-fun lt!17203 () Unit!1077)

(declare-datatypes ((array!2749 0))(
  ( (array!2750 (arr!1318 (Array (_ BitVec 32) (_ BitVec 64))) (size!1476 (_ BitVec 32))) )
))
(declare-fun lt!17195 () array!2749)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun lemmaKeyInListMapIsInArray!103 (array!2749 array!2747 (_ BitVec 32) (_ BitVec 32) V!2203 V!2203 (_ BitVec 64) Int) Unit!1077)

(assert (=> b!42048 (= lt!17203 (lemmaKeyInListMapIsInArray!103 lt!17195 lt!17198 mask!853 #b00000000000000000000000000000000 lt!17200 lt!17200 (_1!794 lt!17206) defaultEntry!470))))

(declare-fun res!25036 () Bool)

(assert (=> b!42048 (= res!25036 (and (not (= (_1!794 lt!17206) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!794 lt!17206) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!26586 () Bool)

(assert (=> b!42048 (=> (not res!25036) (not e!26586))))

(assert (=> b!42048 e!26586))

(declare-fun lt!17196 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2749 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42048 (= lt!17196 (arrayScanForKey!0 lt!17195 (_1!794 lt!17206) #b00000000000000000000000000000000))))

(assert (=> b!42048 false))

(declare-fun b!42050 () Bool)

(declare-fun arrayContainsKey!0 (array!2749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42050 (= e!26586 (arrayContainsKey!0 lt!17195 (_1!794 lt!17206) #b00000000000000000000000000000000))))

(declare-fun b!42049 () Bool)

(declare-fun Unit!1080 () Unit!1077)

(assert (=> b!42049 (= e!26585 Unit!1080)))

(declare-fun res!25035 () Bool)

(declare-fun e!26584 () Bool)

(assert (=> start!6042 (=> (not res!25035) (not e!26584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6042 (= res!25035 (validMask!0 mask!853))))

(assert (=> start!6042 e!26584))

(assert (=> start!6042 true))

(assert (=> start!6042 tp!5852))

(declare-fun b!42047 () Bool)

(assert (=> b!42047 (= e!26584 (not true))))

(declare-fun lt!17202 () Bool)

(declare-datatypes ((LongMapFixedSize!318 0))(
  ( (LongMapFixedSize!319 (defaultEntry!1852 Int) (mask!5284 (_ BitVec 32)) (extraKeys!1743 (_ BitVec 32)) (zeroValue!1770 V!2203) (minValue!1770 V!2203) (_size!208 (_ BitVec 32)) (_keys!3365 array!2749) (_values!1835 array!2747) (_vacant!208 (_ BitVec 32))) )
))
(declare-fun lt!17194 () LongMapFixedSize!318)

(declare-fun valid!126 (LongMapFixedSize!318) Bool)

(assert (=> b!42047 (= lt!17202 (valid!126 lt!17194))))

(declare-fun lt!17201 () Unit!1077)

(assert (=> b!42047 (= lt!17201 e!26585)))

(declare-fun c!5260 () Bool)

(assert (=> b!42047 (= c!5260 (not (= lt!17205 (ListLongMap!1150 Nil!1145))))))

(declare-fun map!758 (LongMapFixedSize!318) ListLongMap!1149)

(assert (=> b!42047 (= lt!17205 (map!758 lt!17194))))

(declare-datatypes ((List!1149 0))(
  ( (Nil!1146) (Cons!1145 (h!1722 (_ BitVec 64)) (t!4096 List!1149)) )
))
(declare-fun arrayNoDuplicates!0 (array!2749 (_ BitVec 32) List!1149) Bool)

(assert (=> b!42047 (arrayNoDuplicates!0 lt!17195 #b00000000000000000000000000000000 Nil!1146)))

(declare-fun lt!17197 () Unit!1077)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2749 (_ BitVec 32) (_ BitVec 32) List!1149) Unit!1077)

(assert (=> b!42047 (= lt!17197 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17195 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2749 (_ BitVec 32)) Bool)

(assert (=> b!42047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17195 mask!853)))

(declare-fun lt!17204 () Unit!1077)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2749 (_ BitVec 32) (_ BitVec 32)) Unit!1077)

(assert (=> b!42047 (= lt!17204 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17195 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2749 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42047 (= (arrayCountValidKeys!0 lt!17195 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17199 () Unit!1077)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2749 (_ BitVec 32) (_ BitVec 32)) Unit!1077)

(assert (=> b!42047 (= lt!17199 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17195 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42047 (= lt!17194 (LongMapFixedSize!319 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17200 lt!17200 #b00000000000000000000000000000000 lt!17195 lt!17198 #b00000000000000000000000000000000))))

(assert (=> b!42047 (= lt!17198 (array!2748 ((as const (Array (_ BitVec 32) ValueCell!669)) EmptyCell!669) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42047 (= lt!17195 (array!2750 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!230 (Int (_ BitVec 64)) V!2203)

(assert (=> b!42047 (= lt!17200 (dynLambda!230 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6042 res!25035) b!42047))

(assert (= (and b!42047 c!5260) b!42048))

(assert (= (and b!42047 (not c!5260)) b!42049))

(assert (= (and b!42048 res!25036) b!42050))

(declare-fun b_lambda!2193 () Bool)

(assert (=> (not b_lambda!2193) (not b!42047)))

(declare-fun t!4094 () Bool)

(declare-fun tb!933 () Bool)

(assert (=> (and start!6042 (= defaultEntry!470 defaultEntry!470) t!4094) tb!933))

(declare-fun result!1609 () Bool)

(declare-fun tp_is_empty!1833 () Bool)

(assert (=> tb!933 (= result!1609 tp_is_empty!1833)))

(assert (=> b!42047 t!4094))

(declare-fun b_and!2547 () Bool)

(assert (= b_and!2545 (and (=> t!4094 result!1609) b_and!2547)))

(declare-fun m!35619 () Bool)

(assert (=> b!42048 m!35619))

(declare-fun m!35621 () Bool)

(assert (=> b!42048 m!35621))

(declare-fun m!35623 () Bool)

(assert (=> b!42048 m!35623))

(declare-fun m!35625 () Bool)

(assert (=> b!42050 m!35625))

(declare-fun m!35627 () Bool)

(assert (=> start!6042 m!35627))

(declare-fun m!35629 () Bool)

(assert (=> b!42047 m!35629))

(declare-fun m!35631 () Bool)

(assert (=> b!42047 m!35631))

(declare-fun m!35633 () Bool)

(assert (=> b!42047 m!35633))

(declare-fun m!35635 () Bool)

(assert (=> b!42047 m!35635))

(declare-fun m!35637 () Bool)

(assert (=> b!42047 m!35637))

(declare-fun m!35639 () Bool)

(assert (=> b!42047 m!35639))

(declare-fun m!35641 () Bool)

(assert (=> b!42047 m!35641))

(declare-fun m!35643 () Bool)

(assert (=> b!42047 m!35643))

(declare-fun m!35645 () Bool)

(assert (=> b!42047 m!35645))

(check-sat (not b_lambda!2193) (not b_next!1443) (not b!42048) b_and!2547 (not start!6042) (not b!42047) (not b!42050) tp_is_empty!1833)
