; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5954 () Bool)

(assert start!5954)

(declare-fun b_free!1427 () Bool)

(declare-fun b_next!1427 () Bool)

(assert (=> start!5954 (= b_free!1427 (not b_next!1427))))

(declare-fun tp!5828 () Bool)

(declare-fun b_and!2513 () Bool)

(assert (=> start!5954 (= tp!5828 b_and!2513)))

(declare-fun b!41784 () Bool)

(declare-fun res!24887 () Bool)

(declare-fun e!26406 () Bool)

(assert (=> b!41784 (=> res!24887 e!26406)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41784 (= res!24887 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41783 () Bool)

(declare-fun res!24888 () Bool)

(assert (=> b!41783 (=> res!24888 e!26406)))

(declare-datatypes ((V!2181 0))(
  ( (V!2182 (val!947 Int)) )
))
(declare-datatypes ((tuple2!1552 0))(
  ( (tuple2!1553 (_1!786 (_ BitVec 64)) (_2!786 V!2181)) )
))
(declare-datatypes ((List!1132 0))(
  ( (Nil!1129) (Cons!1128 (h!1705 tuple2!1552) (t!4063 List!1132)) )
))
(declare-datatypes ((ListLongMap!1133 0))(
  ( (ListLongMap!1134 (toList!582 List!1132)) )
))
(declare-fun lt!16889 () ListLongMap!1133)

(declare-fun isEmpty!267 (List!1132) Bool)

(assert (=> b!41783 (= res!24888 (isEmpty!267 (toList!582 lt!16889)))))

(declare-fun b!41785 () Bool)

(assert (=> b!41785 (= e!26406 true)))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!661 0))(
  ( (ValueCellFull!661 (v!2030 V!2181)) (EmptyCell!661) )
))
(declare-datatypes ((array!2715 0))(
  ( (array!2716 (arr!1301 (Array (_ BitVec 32) ValueCell!661)) (size!1453 (_ BitVec 32))) )
))
(declare-fun lt!16892 () array!2715)

(declare-datatypes ((array!2717 0))(
  ( (array!2718 (arr!1302 (Array (_ BitVec 32) (_ BitVec 64))) (size!1454 (_ BitVec 32))) )
))
(declare-fun lt!16888 () array!2717)

(declare-fun lt!16894 () V!2181)

(declare-fun lt!16887 () Bool)

(declare-fun contains!548 (ListLongMap!1133 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!340 (array!2717 array!2715 (_ BitVec 32) (_ BitVec 32) V!2181 V!2181 (_ BitVec 32) Int) ListLongMap!1133)

(declare-fun head!877 (List!1132) tuple2!1552)

(assert (=> b!41785 (= lt!16887 (contains!548 (getCurrentListMap!340 lt!16888 lt!16892 mask!853 #b00000000000000000000000000000000 lt!16894 lt!16894 #b00000000000000000000000000000000 defaultEntry!470) (_1!786 (head!877 (toList!582 lt!16889)))))))

(declare-fun res!24886 () Bool)

(declare-fun e!26405 () Bool)

(assert (=> start!5954 (=> (not res!24886) (not e!26405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5954 (= res!24886 (validMask!0 mask!853))))

(assert (=> start!5954 e!26405))

(assert (=> start!5954 true))

(assert (=> start!5954 tp!5828))

(declare-fun b!41782 () Bool)

(assert (=> b!41782 (= e!26405 (not e!26406))))

(declare-fun res!24889 () Bool)

(assert (=> b!41782 (=> res!24889 e!26406)))

(assert (=> b!41782 (= res!24889 (= lt!16889 (ListLongMap!1134 Nil!1129)))))

(declare-datatypes ((LongMapFixedSize!302 0))(
  ( (LongMapFixedSize!303 (defaultEntry!1841 Int) (mask!5258 (_ BitVec 32)) (extraKeys!1732 (_ BitVec 32)) (zeroValue!1759 V!2181) (minValue!1759 V!2181) (_size!200 (_ BitVec 32)) (_keys!3348 array!2717) (_values!1824 array!2715) (_vacant!200 (_ BitVec 32))) )
))
(declare-fun map!744 (LongMapFixedSize!302) ListLongMap!1133)

(assert (=> b!41782 (= lt!16889 (map!744 (LongMapFixedSize!303 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16894 lt!16894 #b00000000000000000000000000000000 lt!16888 lt!16892 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1133 0))(
  ( (Nil!1130) (Cons!1129 (h!1706 (_ BitVec 64)) (t!4064 List!1133)) )
))
(declare-fun arrayNoDuplicates!0 (array!2717 (_ BitVec 32) List!1133) Bool)

(assert (=> b!41782 (arrayNoDuplicates!0 lt!16888 #b00000000000000000000000000000000 Nil!1130)))

(declare-datatypes ((Unit!1059 0))(
  ( (Unit!1060) )
))
(declare-fun lt!16891 () Unit!1059)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2717 (_ BitVec 32) (_ BitVec 32) List!1133) Unit!1059)

(assert (=> b!41782 (= lt!16891 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16888 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2717 (_ BitVec 32)) Bool)

(assert (=> b!41782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16888 mask!853)))

(declare-fun lt!16890 () Unit!1059)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2717 (_ BitVec 32) (_ BitVec 32)) Unit!1059)

(assert (=> b!41782 (= lt!16890 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16888 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2717 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41782 (= (arrayCountValidKeys!0 lt!16888 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16893 () Unit!1059)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2717 (_ BitVec 32) (_ BitVec 32)) Unit!1059)

(assert (=> b!41782 (= lt!16893 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16888 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41782 (= lt!16892 (array!2716 ((as const (Array (_ BitVec 32) ValueCell!661)) EmptyCell!661) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41782 (= lt!16888 (array!2718 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!222 (Int (_ BitVec 64)) V!2181)

(assert (=> b!41782 (= lt!16894 (dynLambda!222 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5954 res!24886) b!41782))

(assert (= (and b!41782 (not res!24889)) b!41783))

(assert (= (and b!41783 (not res!24888)) b!41784))

(assert (= (and b!41784 (not res!24887)) b!41785))

(declare-fun b_lambda!2171 () Bool)

(assert (=> (not b_lambda!2171) (not b!41782)))

(declare-fun t!4062 () Bool)

(declare-fun tb!917 () Bool)

(assert (=> (and start!5954 (= defaultEntry!470 defaultEntry!470) t!4062) tb!917))

(declare-fun result!1577 () Bool)

(declare-fun tp_is_empty!1817 () Bool)

(assert (=> tb!917 (= result!1577 tp_is_empty!1817)))

(assert (=> b!41782 t!4062))

(declare-fun b_and!2515 () Bool)

(assert (= b_and!2513 (and (=> t!4062 result!1577) b_and!2515)))

(declare-fun m!35319 () Bool)

(assert (=> b!41783 m!35319))

(declare-fun m!35321 () Bool)

(assert (=> b!41785 m!35321))

(declare-fun m!35323 () Bool)

(assert (=> b!41785 m!35323))

(assert (=> b!41785 m!35321))

(declare-fun m!35325 () Bool)

(assert (=> b!41785 m!35325))

(declare-fun m!35327 () Bool)

(assert (=> start!5954 m!35327))

(declare-fun m!35329 () Bool)

(assert (=> b!41782 m!35329))

(declare-fun m!35331 () Bool)

(assert (=> b!41782 m!35331))

(declare-fun m!35333 () Bool)

(assert (=> b!41782 m!35333))

(declare-fun m!35335 () Bool)

(assert (=> b!41782 m!35335))

(declare-fun m!35337 () Bool)

(assert (=> b!41782 m!35337))

(declare-fun m!35339 () Bool)

(assert (=> b!41782 m!35339))

(declare-fun m!35341 () Bool)

(assert (=> b!41782 m!35341))

(declare-fun m!35343 () Bool)

(assert (=> b!41782 m!35343))

(push 1)

(assert (not b_lambda!2171))

(assert (not b!41785))

(assert (not start!5954))

(assert (not b!41782))

(assert b_and!2515)

(assert (not b_next!1427))

(assert (not b!41783))

(assert tp_is_empty!1817)

(check-sat)

