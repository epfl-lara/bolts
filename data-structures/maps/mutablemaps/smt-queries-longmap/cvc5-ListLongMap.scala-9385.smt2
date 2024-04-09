; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111782 () Bool)

(assert start!111782)

(declare-fun b_free!30403 () Bool)

(declare-fun b_next!30403 () Bool)

(assert (=> start!111782 (= b_free!30403 (not b_next!30403))))

(declare-fun tp!106685 () Bool)

(declare-fun b_and!48951 () Bool)

(assert (=> start!111782 (= tp!106685 b_and!48951)))

(declare-fun b!1324031 () Bool)

(declare-fun res!878922 () Bool)

(declare-fun e!754837 () Bool)

(assert (=> b!1324031 (=> (not res!878922) (not e!754837))))

(declare-datatypes ((array!89315 0))(
  ( (array!89316 (arr!43127 (Array (_ BitVec 32) (_ BitVec 64))) (size!43678 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89315)

(declare-datatypes ((List!30768 0))(
  ( (Nil!30765) (Cons!30764 (h!31973 (_ BitVec 64)) (t!44701 List!30768)) )
))
(declare-fun arrayNoDuplicates!0 (array!89315 (_ BitVec 32) List!30768) Bool)

(assert (=> b!1324031 (= res!878922 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30765))))

(declare-fun b!1324032 () Bool)

(declare-fun res!878923 () Bool)

(assert (=> b!1324032 (=> (not res!878923) (not e!754837))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89315 (_ BitVec 32)) Bool)

(assert (=> b!1324032 (= res!878923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324033 () Bool)

(declare-fun e!754836 () Bool)

(declare-fun tp_is_empty!36223 () Bool)

(assert (=> b!1324033 (= e!754836 tp_is_empty!36223)))

(declare-fun b!1324034 () Bool)

(declare-fun res!878919 () Bool)

(assert (=> b!1324034 (=> (not res!878919) (not e!754837))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53401 0))(
  ( (V!53402 (val!18186 Int)) )
))
(declare-datatypes ((ValueCell!17213 0))(
  ( (ValueCellFull!17213 (v!20814 V!53401)) (EmptyCell!17213) )
))
(declare-datatypes ((array!89317 0))(
  ( (array!89318 (arr!43128 (Array (_ BitVec 32) ValueCell!17213)) (size!43679 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89317)

(assert (=> b!1324034 (= res!878919 (and (= (size!43679 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43678 _keys!1609) (size!43679 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324035 () Bool)

(assert (=> b!1324035 (= e!754837 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53401)

(declare-fun minValue!1279 () V!53401)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589369 () Bool)

(declare-datatypes ((tuple2!23594 0))(
  ( (tuple2!23595 (_1!11807 (_ BitVec 64)) (_2!11807 V!53401)) )
))
(declare-datatypes ((List!30769 0))(
  ( (Nil!30766) (Cons!30765 (h!31974 tuple2!23594) (t!44702 List!30769)) )
))
(declare-datatypes ((ListLongMap!21263 0))(
  ( (ListLongMap!21264 (toList!10647 List!30769)) )
))
(declare-fun contains!8738 (ListLongMap!21263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5584 (array!89315 array!89317 (_ BitVec 32) (_ BitVec 32) V!53401 V!53401 (_ BitVec 32) Int) ListLongMap!21263)

(assert (=> b!1324035 (= lt!589369 (contains!8738 (getCurrentListMap!5584 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324036 () Bool)

(declare-fun e!754833 () Bool)

(declare-fun e!754835 () Bool)

(declare-fun mapRes!55982 () Bool)

(assert (=> b!1324036 (= e!754833 (and e!754835 mapRes!55982))))

(declare-fun condMapEmpty!55982 () Bool)

(declare-fun mapDefault!55982 () ValueCell!17213)

