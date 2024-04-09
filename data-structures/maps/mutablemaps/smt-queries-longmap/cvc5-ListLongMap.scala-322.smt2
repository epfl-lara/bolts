; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5920 () Bool)

(assert start!5920)

(declare-fun b_free!1393 () Bool)

(declare-fun b_next!1393 () Bool)

(assert (=> start!5920 (= b_free!1393 (not b_next!1393))))

(declare-fun tp!5777 () Bool)

(declare-fun b_and!2445 () Bool)

(assert (=> start!5920 (= tp!5777 b_and!2445)))

(declare-fun b!41547 () Bool)

(declare-fun e!26303 () Bool)

(assert (=> b!41547 (= e!26303 true)))

(declare-datatypes ((V!2137 0))(
  ( (V!2138 (val!930 Int)) )
))
(declare-fun lt!16483 () V!2137)

(declare-fun lt!16484 () Bool)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!644 0))(
  ( (ValueCellFull!644 (v!2013 V!2137)) (EmptyCell!644) )
))
(declare-datatypes ((array!2647 0))(
  ( (array!2648 (arr!1267 (Array (_ BitVec 32) ValueCell!644)) (size!1419 (_ BitVec 32))) )
))
(declare-fun lt!16480 () array!2647)

(declare-datatypes ((array!2649 0))(
  ( (array!2650 (arr!1268 (Array (_ BitVec 32) (_ BitVec 64))) (size!1420 (_ BitVec 32))) )
))
(declare-fun lt!16479 () array!2649)

(declare-datatypes ((tuple2!1518 0))(
  ( (tuple2!1519 (_1!769 (_ BitVec 64)) (_2!769 V!2137)) )
))
(declare-datatypes ((List!1098 0))(
  ( (Nil!1095) (Cons!1094 (h!1671 tuple2!1518) (t!3995 List!1098)) )
))
(declare-datatypes ((ListLongMap!1099 0))(
  ( (ListLongMap!1100 (toList!565 List!1098)) )
))
(declare-fun lt!16485 () ListLongMap!1099)

(declare-fun contains!531 (ListLongMap!1099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!323 (array!2649 array!2647 (_ BitVec 32) (_ BitVec 32) V!2137 V!2137 (_ BitVec 32) Int) ListLongMap!1099)

(declare-fun head!860 (List!1098) tuple2!1518)

(assert (=> b!41547 (= lt!16484 (contains!531 (getCurrentListMap!323 lt!16479 lt!16480 mask!853 #b00000000000000000000000000000000 lt!16483 lt!16483 #b00000000000000000000000000000000 defaultEntry!470) (_1!769 (head!860 (toList!565 lt!16485)))))))

(declare-fun b!41545 () Bool)

(declare-fun res!24685 () Bool)

(assert (=> b!41545 (=> res!24685 e!26303)))

(declare-fun isEmpty!250 (List!1098) Bool)

(assert (=> b!41545 (= res!24685 (isEmpty!250 (toList!565 lt!16485)))))

(declare-fun b!41544 () Bool)

(declare-fun e!26304 () Bool)

(assert (=> b!41544 (= e!26304 (not e!26303))))

(declare-fun res!24684 () Bool)

(assert (=> b!41544 (=> res!24684 e!26303)))

(assert (=> b!41544 (= res!24684 (= lt!16485 (ListLongMap!1100 Nil!1095)))))

(declare-datatypes ((LongMapFixedSize!268 0))(
  ( (LongMapFixedSize!269 (defaultEntry!1824 Int) (mask!5231 (_ BitVec 32)) (extraKeys!1715 (_ BitVec 32)) (zeroValue!1742 V!2137) (minValue!1742 V!2137) (_size!183 (_ BitVec 32)) (_keys!3331 array!2649) (_values!1807 array!2647) (_vacant!183 (_ BitVec 32))) )
))
(declare-fun map!717 (LongMapFixedSize!268) ListLongMap!1099)

(assert (=> b!41544 (= lt!16485 (map!717 (LongMapFixedSize!269 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16483 lt!16483 #b00000000000000000000000000000000 lt!16479 lt!16480 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1099 0))(
  ( (Nil!1096) (Cons!1095 (h!1672 (_ BitVec 64)) (t!3996 List!1099)) )
))
(declare-fun arrayNoDuplicates!0 (array!2649 (_ BitVec 32) List!1099) Bool)

(assert (=> b!41544 (arrayNoDuplicates!0 lt!16479 #b00000000000000000000000000000000 Nil!1096)))

(declare-datatypes ((Unit!1025 0))(
  ( (Unit!1026) )
))
(declare-fun lt!16482 () Unit!1025)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2649 (_ BitVec 32) (_ BitVec 32) List!1099) Unit!1025)

(assert (=> b!41544 (= lt!16482 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16479 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2649 (_ BitVec 32)) Bool)

(assert (=> b!41544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16479 mask!853)))

(declare-fun lt!16486 () Unit!1025)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2649 (_ BitVec 32) (_ BitVec 32)) Unit!1025)

(assert (=> b!41544 (= lt!16486 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16479 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2649 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41544 (= (arrayCountValidKeys!0 lt!16479 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16481 () Unit!1025)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2649 (_ BitVec 32) (_ BitVec 32)) Unit!1025)

(assert (=> b!41544 (= lt!16481 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16479 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41544 (= lt!16480 (array!2648 ((as const (Array (_ BitVec 32) ValueCell!644)) EmptyCell!644) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41544 (= lt!16479 (array!2650 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!205 (Int (_ BitVec 64)) V!2137)

(assert (=> b!41544 (= lt!16483 (dynLambda!205 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41546 () Bool)

(declare-fun res!24683 () Bool)

(assert (=> b!41546 (=> res!24683 e!26303)))

(assert (=> b!41546 (= res!24683 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun res!24682 () Bool)

(assert (=> start!5920 (=> (not res!24682) (not e!26304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5920 (= res!24682 (validMask!0 mask!853))))

(assert (=> start!5920 e!26304))

(assert (=> start!5920 true))

(assert (=> start!5920 tp!5777))

(assert (= (and start!5920 res!24682) b!41544))

(assert (= (and b!41544 (not res!24684)) b!41545))

(assert (= (and b!41545 (not res!24685)) b!41546))

(assert (= (and b!41546 (not res!24683)) b!41547))

(declare-fun b_lambda!2137 () Bool)

(assert (=> (not b_lambda!2137) (not b!41544)))

(declare-fun t!3994 () Bool)

(declare-fun tb!883 () Bool)

(assert (=> (and start!5920 (= defaultEntry!470 defaultEntry!470) t!3994) tb!883))

(declare-fun result!1509 () Bool)

(declare-fun tp_is_empty!1783 () Bool)

(assert (=> tb!883 (= result!1509 tp_is_empty!1783)))

(assert (=> b!41544 t!3994))

(declare-fun b_and!2447 () Bool)

(assert (= b_and!2445 (and (=> t!3994 result!1509) b_and!2447)))

(declare-fun m!34877 () Bool)

(assert (=> b!41547 m!34877))

(declare-fun m!34879 () Bool)

(assert (=> b!41547 m!34879))

(assert (=> b!41547 m!34877))

(declare-fun m!34881 () Bool)

(assert (=> b!41547 m!34881))

(declare-fun m!34883 () Bool)

(assert (=> b!41545 m!34883))

(declare-fun m!34885 () Bool)

(assert (=> b!41544 m!34885))

(declare-fun m!34887 () Bool)

(assert (=> b!41544 m!34887))

(declare-fun m!34889 () Bool)

(assert (=> b!41544 m!34889))

(declare-fun m!34891 () Bool)

(assert (=> b!41544 m!34891))

(declare-fun m!34893 () Bool)

(assert (=> b!41544 m!34893))

(declare-fun m!34895 () Bool)

(assert (=> b!41544 m!34895))

(declare-fun m!34897 () Bool)

(assert (=> b!41544 m!34897))

(declare-fun m!34899 () Bool)

(assert (=> b!41544 m!34899))

(declare-fun m!34901 () Bool)

(assert (=> start!5920 m!34901))

(push 1)

(assert (not b!41545))

(assert (not b_lambda!2137))

(assert b_and!2447)

(assert (not b!41547))

(assert (not start!5920))

(assert (not b!41544))

(assert tp_is_empty!1783)

(assert (not b_next!1393))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2447)

(assert (not b_next!1393))

(check-sat)

(pop 1)

