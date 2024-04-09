; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6468 () Bool)

(assert start!6468)

(declare-fun b_free!1497 () Bool)

(declare-fun b_next!1497 () Bool)

(assert (=> start!6468 (= b_free!1497 (not b_next!1497))))

(declare-fun tp!5933 () Bool)

(declare-fun b_and!2653 () Bool)

(assert (=> start!6468 (= tp!5933 b_and!2653)))

(declare-fun res!25546 () Bool)

(declare-fun e!27270 () Bool)

(assert (=> start!6468 (=> (not res!25546) (not e!27270))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6468 (= res!25546 (validMask!0 mask!853))))

(assert (=> start!6468 e!27270))

(assert (=> start!6468 true))

(assert (=> start!6468 tp!5933))

(declare-fun b!43016 () Bool)

(assert (=> b!43016 (= e!27270 (not true))))

(declare-datatypes ((array!2915 0))(
  ( (array!2916 (arr!1401 (Array (_ BitVec 32) (_ BitVec 64))) (size!1586 (_ BitVec 32))) )
))
(declare-fun lt!18331 () array!2915)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2303 0))(
  ( (V!2304 (val!982 Int)) )
))
(declare-datatypes ((tuple2!1622 0))(
  ( (tuple2!1623 (_1!821 (_ BitVec 64)) (_2!821 V!2303)) )
))
(declare-datatypes ((List!1208 0))(
  ( (Nil!1205) (Cons!1204 (h!1781 tuple2!1622) (t!4209 List!1208)) )
))
(declare-datatypes ((ListLongMap!1203 0))(
  ( (ListLongMap!1204 (toList!617 List!1208)) )
))
(declare-fun lt!18326 () ListLongMap!1203)

(declare-fun lt!18327 () V!2303)

(declare-datatypes ((ValueCell!696 0))(
  ( (ValueCellFull!696 (v!2071 V!2303)) (EmptyCell!696) )
))
(declare-datatypes ((array!2917 0))(
  ( (array!2918 (arr!1402 (Array (_ BitVec 32) ValueCell!696)) (size!1587 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!372 0))(
  ( (LongMapFixedSize!373 (defaultEntry!1879 Int) (mask!5426 (_ BitVec 32)) (extraKeys!1770 (_ BitVec 32)) (zeroValue!1797 V!2303) (minValue!1797 V!2303) (_size!235 (_ BitVec 32)) (_keys!3428 array!2915) (_values!1862 array!2917) (_vacant!235 (_ BitVec 32))) )
))
(declare-fun map!831 (LongMapFixedSize!372) ListLongMap!1203)

(assert (=> b!43016 (= lt!18326 (map!831 (LongMapFixedSize!373 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18327 lt!18327 #b00000000000000000000000000000000 lt!18331 (array!2918 ((as const (Array (_ BitVec 32) ValueCell!696)) EmptyCell!696) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1209 0))(
  ( (Nil!1206) (Cons!1205 (h!1782 (_ BitVec 64)) (t!4210 List!1209)) )
))
(declare-fun arrayNoDuplicates!0 (array!2915 (_ BitVec 32) List!1209) Bool)

(assert (=> b!43016 (arrayNoDuplicates!0 lt!18331 #b00000000000000000000000000000000 Nil!1206)))

(declare-datatypes ((Unit!1195 0))(
  ( (Unit!1196) )
))
(declare-fun lt!18329 () Unit!1195)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2915 (_ BitVec 32) (_ BitVec 32) List!1209) Unit!1195)

(assert (=> b!43016 (= lt!18329 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2915 (_ BitVec 32)) Bool)

(assert (=> b!43016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18331 mask!853)))

(declare-fun lt!18330 () Unit!1195)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2915 (_ BitVec 32) (_ BitVec 32)) Unit!1195)

(assert (=> b!43016 (= lt!18330 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18331 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2915 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43016 (= (arrayCountValidKeys!0 lt!18331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18328 () Unit!1195)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2915 (_ BitVec 32) (_ BitVec 32)) Unit!1195)

(assert (=> b!43016 (= lt!18328 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18331 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43016 (= lt!18331 (array!2916 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!257 (Int (_ BitVec 64)) V!2303)

(assert (=> b!43016 (= lt!18327 (dynLambda!257 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6468 res!25546) b!43016))

(declare-fun b_lambda!2259 () Bool)

(assert (=> (not b_lambda!2259) (not b!43016)))

(declare-fun t!4208 () Bool)

(declare-fun tb!987 () Bool)

(assert (=> (and start!6468 (= defaultEntry!470 defaultEntry!470) t!4208) tb!987))

(declare-fun result!1717 () Bool)

(declare-fun tp_is_empty!1887 () Bool)

(assert (=> tb!987 (= result!1717 tp_is_empty!1887)))

(assert (=> b!43016 t!4208))

(declare-fun b_and!2655 () Bool)

(assert (= b_and!2653 (and (=> t!4208 result!1717) b_and!2655)))

(declare-fun m!36911 () Bool)

(assert (=> start!6468 m!36911))

(declare-fun m!36913 () Bool)

(assert (=> b!43016 m!36913))

(declare-fun m!36915 () Bool)

(assert (=> b!43016 m!36915))

(declare-fun m!36917 () Bool)

(assert (=> b!43016 m!36917))

(declare-fun m!36919 () Bool)

(assert (=> b!43016 m!36919))

(declare-fun m!36921 () Bool)

(assert (=> b!43016 m!36921))

(declare-fun m!36923 () Bool)

(assert (=> b!43016 m!36923))

(declare-fun m!36925 () Bool)

(assert (=> b!43016 m!36925))

(declare-fun m!36927 () Bool)

(assert (=> b!43016 m!36927))

(check-sat b_and!2655 (not b_lambda!2259) (not b!43016) tp_is_empty!1887 (not start!6468) (not b_next!1497))
(check-sat b_and!2655 (not b_next!1497))
