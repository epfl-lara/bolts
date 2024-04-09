; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5912 () Bool)

(assert start!5912)

(declare-fun b_free!1385 () Bool)

(declare-fun b_next!1385 () Bool)

(assert (=> start!5912 (= b_free!1385 (not b_next!1385))))

(declare-fun tp!5765 () Bool)

(declare-fun b_and!2429 () Bool)

(assert (=> start!5912 (= tp!5765 b_and!2429)))

(declare-fun b!41490 () Bool)

(declare-fun res!24635 () Bool)

(declare-fun e!26280 () Bool)

(assert (=> b!41490 (=> res!24635 e!26280)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41490 (= res!24635 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41489 () Bool)

(declare-fun res!24636 () Bool)

(assert (=> b!41489 (=> res!24636 e!26280)))

(declare-datatypes ((V!2125 0))(
  ( (V!2126 (val!926 Int)) )
))
(declare-datatypes ((tuple2!1510 0))(
  ( (tuple2!1511 (_1!765 (_ BitVec 64)) (_2!765 V!2125)) )
))
(declare-datatypes ((List!1090 0))(
  ( (Nil!1087) (Cons!1086 (h!1663 tuple2!1510) (t!3979 List!1090)) )
))
(declare-datatypes ((ListLongMap!1091 0))(
  ( (ListLongMap!1092 (toList!561 List!1090)) )
))
(declare-fun lt!16385 () ListLongMap!1091)

(declare-fun isEmpty!246 (List!1090) Bool)

(assert (=> b!41489 (= res!24636 (isEmpty!246 (toList!561 lt!16385)))))

(declare-fun b!41491 () Bool)

(assert (=> b!41491 (= e!26280 true)))

(declare-fun lt!16384 () Bool)

(declare-fun lt!16383 () V!2125)

(declare-datatypes ((array!2631 0))(
  ( (array!2632 (arr!1259 (Array (_ BitVec 32) (_ BitVec 64))) (size!1411 (_ BitVec 32))) )
))
(declare-fun lt!16386 () array!2631)

(declare-datatypes ((ValueCell!640 0))(
  ( (ValueCellFull!640 (v!2009 V!2125)) (EmptyCell!640) )
))
(declare-datatypes ((array!2633 0))(
  ( (array!2634 (arr!1260 (Array (_ BitVec 32) ValueCell!640)) (size!1412 (_ BitVec 32))) )
))
(declare-fun lt!16389 () array!2633)

(declare-fun defaultEntry!470 () Int)

(declare-fun contains!527 (ListLongMap!1091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!319 (array!2631 array!2633 (_ BitVec 32) (_ BitVec 32) V!2125 V!2125 (_ BitVec 32) Int) ListLongMap!1091)

(declare-fun head!856 (List!1090) tuple2!1510)

(assert (=> b!41491 (= lt!16384 (contains!527 (getCurrentListMap!319 lt!16386 lt!16389 mask!853 #b00000000000000000000000000000000 lt!16383 lt!16383 #b00000000000000000000000000000000 defaultEntry!470) (_1!765 (head!856 (toList!561 lt!16385)))))))

(declare-fun res!24634 () Bool)

(declare-fun e!26279 () Bool)

(assert (=> start!5912 (=> (not res!24634) (not e!26279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5912 (= res!24634 (validMask!0 mask!853))))

(assert (=> start!5912 e!26279))

(assert (=> start!5912 true))

(assert (=> start!5912 tp!5765))

(declare-fun b!41488 () Bool)

(assert (=> b!41488 (= e!26279 (not e!26280))))

(declare-fun res!24637 () Bool)

(assert (=> b!41488 (=> res!24637 e!26280)))

(assert (=> b!41488 (= res!24637 (= lt!16385 (ListLongMap!1092 Nil!1087)))))

(declare-datatypes ((LongMapFixedSize!260 0))(
  ( (LongMapFixedSize!261 (defaultEntry!1820 Int) (mask!5223 (_ BitVec 32)) (extraKeys!1711 (_ BitVec 32)) (zeroValue!1738 V!2125) (minValue!1738 V!2125) (_size!179 (_ BitVec 32)) (_keys!3327 array!2631) (_values!1803 array!2633) (_vacant!179 (_ BitVec 32))) )
))
(declare-fun map!709 (LongMapFixedSize!260) ListLongMap!1091)

(assert (=> b!41488 (= lt!16385 (map!709 (LongMapFixedSize!261 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16383 lt!16383 #b00000000000000000000000000000000 lt!16386 lt!16389 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1091 0))(
  ( (Nil!1088) (Cons!1087 (h!1664 (_ BitVec 64)) (t!3980 List!1091)) )
))
(declare-fun arrayNoDuplicates!0 (array!2631 (_ BitVec 32) List!1091) Bool)

(assert (=> b!41488 (arrayNoDuplicates!0 lt!16386 #b00000000000000000000000000000000 Nil!1088)))

(declare-datatypes ((Unit!1017 0))(
  ( (Unit!1018) )
))
(declare-fun lt!16388 () Unit!1017)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2631 (_ BitVec 32) (_ BitVec 32) List!1091) Unit!1017)

(assert (=> b!41488 (= lt!16388 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16386 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2631 (_ BitVec 32)) Bool)

(assert (=> b!41488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16386 mask!853)))

(declare-fun lt!16387 () Unit!1017)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2631 (_ BitVec 32) (_ BitVec 32)) Unit!1017)

(assert (=> b!41488 (= lt!16387 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16386 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2631 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41488 (= (arrayCountValidKeys!0 lt!16386 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16390 () Unit!1017)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2631 (_ BitVec 32) (_ BitVec 32)) Unit!1017)

(assert (=> b!41488 (= lt!16390 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16386 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41488 (= lt!16389 (array!2634 ((as const (Array (_ BitVec 32) ValueCell!640)) EmptyCell!640) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41488 (= lt!16386 (array!2632 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!201 (Int (_ BitVec 64)) V!2125)

(assert (=> b!41488 (= lt!16383 (dynLambda!201 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5912 res!24634) b!41488))

(assert (= (and b!41488 (not res!24637)) b!41489))

(assert (= (and b!41489 (not res!24636)) b!41490))

(assert (= (and b!41490 (not res!24635)) b!41491))

(declare-fun b_lambda!2129 () Bool)

(assert (=> (not b_lambda!2129) (not b!41488)))

(declare-fun t!3978 () Bool)

(declare-fun tb!875 () Bool)

(assert (=> (and start!5912 (= defaultEntry!470 defaultEntry!470) t!3978) tb!875))

(declare-fun result!1493 () Bool)

(declare-fun tp_is_empty!1775 () Bool)

(assert (=> tb!875 (= result!1493 tp_is_empty!1775)))

(assert (=> b!41488 t!3978))

(declare-fun b_and!2431 () Bool)

(assert (= b_and!2429 (and (=> t!3978 result!1493) b_and!2431)))

(declare-fun m!34773 () Bool)

(assert (=> b!41489 m!34773))

(declare-fun m!34775 () Bool)

(assert (=> b!41491 m!34775))

(declare-fun m!34777 () Bool)

(assert (=> b!41491 m!34777))

(assert (=> b!41491 m!34775))

(declare-fun m!34779 () Bool)

(assert (=> b!41491 m!34779))

(declare-fun m!34781 () Bool)

(assert (=> start!5912 m!34781))

(declare-fun m!34783 () Bool)

(assert (=> b!41488 m!34783))

(declare-fun m!34785 () Bool)

(assert (=> b!41488 m!34785))

(declare-fun m!34787 () Bool)

(assert (=> b!41488 m!34787))

(declare-fun m!34789 () Bool)

(assert (=> b!41488 m!34789))

(declare-fun m!34791 () Bool)

(assert (=> b!41488 m!34791))

(declare-fun m!34793 () Bool)

(assert (=> b!41488 m!34793))

(declare-fun m!34795 () Bool)

(assert (=> b!41488 m!34795))

(declare-fun m!34797 () Bool)

(assert (=> b!41488 m!34797))

(push 1)

(assert b_and!2431)

(assert (not b_next!1385))

(assert (not b!41489))

(assert tp_is_empty!1775)

(assert (not b!41491))

(assert (not start!5912))

(assert (not b_lambda!2129))

(assert (not b!41488))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2431)

(assert (not b_next!1385))

(check-sat)

(pop 1)

