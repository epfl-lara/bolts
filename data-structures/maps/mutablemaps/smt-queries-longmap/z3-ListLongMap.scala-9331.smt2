; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111460 () Bool)

(assert start!111460)

(declare-fun b_free!30081 () Bool)

(declare-fun b_next!30081 () Bool)

(assert (=> start!111460 (= b_free!30081 (not b_next!30081))))

(declare-fun tp!105719 () Bool)

(declare-fun b_and!48331 () Bool)

(assert (=> start!111460 (= tp!105719 b_and!48331)))

(declare-fun b!1318534 () Bool)

(declare-fun res!875169 () Bool)

(declare-fun e!752421 () Bool)

(assert (=> b!1318534 (=> (not res!875169) (not e!752421))))

(declare-datatypes ((array!88703 0))(
  ( (array!88704 (arr!42821 (Array (_ BitVec 32) (_ BitVec 64))) (size!43372 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88703)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88703 (_ BitVec 32)) Bool)

(assert (=> b!1318534 (= res!875169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55499 () Bool)

(declare-fun mapRes!55499 () Bool)

(assert (=> mapIsEmpty!55499 mapRes!55499))

(declare-fun b!1318535 () Bool)

(declare-fun e!752419 () Bool)

(declare-fun tp_is_empty!35901 () Bool)

(assert (=> b!1318535 (= e!752419 tp_is_empty!35901)))

(declare-fun b!1318536 () Bool)

(declare-fun res!875171 () Bool)

(assert (=> b!1318536 (=> (not res!875171) (not e!752421))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318536 (= res!875171 (not (= (select (arr!42821 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318537 () Bool)

(declare-fun e!752422 () Bool)

(assert (=> b!1318537 (= e!752422 tp_is_empty!35901)))

(declare-fun b!1318538 () Bool)

(declare-fun res!875173 () Bool)

(assert (=> b!1318538 (=> (not res!875173) (not e!752421))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1318538 (= res!875173 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43372 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318539 () Bool)

(assert (=> b!1318539 (= e!752421 (not true))))

(declare-datatypes ((V!52971 0))(
  ( (V!52972 (val!18025 Int)) )
))
(declare-datatypes ((tuple2!23350 0))(
  ( (tuple2!23351 (_1!11685 (_ BitVec 64)) (_2!11685 V!52971)) )
))
(declare-datatypes ((List!30541 0))(
  ( (Nil!30538) (Cons!30537 (h!31746 tuple2!23350) (t!44178 List!30541)) )
))
(declare-datatypes ((ListLongMap!21019 0))(
  ( (ListLongMap!21020 (toList!10525 List!30541)) )
))
(declare-fun lt!586434 () ListLongMap!21019)

(declare-fun contains!8616 (ListLongMap!21019 (_ BitVec 64)) Bool)

(assert (=> b!1318539 (contains!8616 lt!586434 k0!1164)))

(declare-fun minValue!1279 () V!52971)

(declare-datatypes ((Unit!43368 0))(
  ( (Unit!43369) )
))
(declare-fun lt!586435 () Unit!43368)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!99 ((_ BitVec 64) (_ BitVec 64) V!52971 ListLongMap!21019) Unit!43368)

(assert (=> b!1318539 (= lt!586435 (lemmaInListMapAfterAddingDiffThenInBefore!99 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586434))))

(declare-fun zeroValue!1279 () V!52971)

(declare-datatypes ((ValueCell!17052 0))(
  ( (ValueCellFull!17052 (v!20653 V!52971)) (EmptyCell!17052) )
))
(declare-datatypes ((array!88705 0))(
  ( (array!88706 (arr!42822 (Array (_ BitVec 32) ValueCell!17052)) (size!43373 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88705)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4484 (ListLongMap!21019 tuple2!23350) ListLongMap!21019)

(declare-fun getCurrentListMapNoExtraKeys!6199 (array!88703 array!88705 (_ BitVec 32) (_ BitVec 32) V!52971 V!52971 (_ BitVec 32) Int) ListLongMap!21019)

(declare-fun get!21558 (ValueCell!17052 V!52971) V!52971)

(declare-fun dynLambda!3521 (Int (_ BitVec 64)) V!52971)

(assert (=> b!1318539 (= lt!586434 (+!4484 (+!4484 (getCurrentListMapNoExtraKeys!6199 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23351 (select (arr!42821 _keys!1609) from!2000) (get!21558 (select (arr!42822 _values!1337) from!2000) (dynLambda!3521 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23351 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318540 () Bool)

(declare-fun e!752420 () Bool)

(assert (=> b!1318540 (= e!752420 (and e!752419 mapRes!55499))))

(declare-fun condMapEmpty!55499 () Bool)

(declare-fun mapDefault!55499 () ValueCell!17052)

(assert (=> b!1318540 (= condMapEmpty!55499 (= (arr!42822 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17052)) mapDefault!55499)))))

(declare-fun b!1318541 () Bool)

(declare-fun res!875176 () Bool)

(assert (=> b!1318541 (=> (not res!875176) (not e!752421))))

(declare-fun getCurrentListMap!5480 (array!88703 array!88705 (_ BitVec 32) (_ BitVec 32) V!52971 V!52971 (_ BitVec 32) Int) ListLongMap!21019)

(assert (=> b!1318541 (= res!875176 (contains!8616 (getCurrentListMap!5480 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318542 () Bool)

(declare-fun res!875170 () Bool)

(assert (=> b!1318542 (=> (not res!875170) (not e!752421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318542 (= res!875170 (validKeyInArray!0 (select (arr!42821 _keys!1609) from!2000)))))

(declare-fun b!1318543 () Bool)

(declare-fun res!875172 () Bool)

(assert (=> b!1318543 (=> (not res!875172) (not e!752421))))

(assert (=> b!1318543 (= res!875172 (and (= (size!43373 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43372 _keys!1609) (size!43373 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875175 () Bool)

(assert (=> start!111460 (=> (not res!875175) (not e!752421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111460 (= res!875175 (validMask!0 mask!2019))))

(assert (=> start!111460 e!752421))

(declare-fun array_inv!32287 (array!88703) Bool)

(assert (=> start!111460 (array_inv!32287 _keys!1609)))

(assert (=> start!111460 true))

(assert (=> start!111460 tp_is_empty!35901))

(declare-fun array_inv!32288 (array!88705) Bool)

(assert (=> start!111460 (and (array_inv!32288 _values!1337) e!752420)))

(assert (=> start!111460 tp!105719))

(declare-fun b!1318544 () Bool)

(declare-fun res!875174 () Bool)

(assert (=> b!1318544 (=> (not res!875174) (not e!752421))))

(declare-datatypes ((List!30542 0))(
  ( (Nil!30539) (Cons!30538 (h!31747 (_ BitVec 64)) (t!44179 List!30542)) )
))
(declare-fun arrayNoDuplicates!0 (array!88703 (_ BitVec 32) List!30542) Bool)

(assert (=> b!1318544 (= res!875174 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30539))))

(declare-fun mapNonEmpty!55499 () Bool)

(declare-fun tp!105720 () Bool)

(assert (=> mapNonEmpty!55499 (= mapRes!55499 (and tp!105720 e!752422))))

(declare-fun mapValue!55499 () ValueCell!17052)

(declare-fun mapRest!55499 () (Array (_ BitVec 32) ValueCell!17052))

(declare-fun mapKey!55499 () (_ BitVec 32))

(assert (=> mapNonEmpty!55499 (= (arr!42822 _values!1337) (store mapRest!55499 mapKey!55499 mapValue!55499))))

(assert (= (and start!111460 res!875175) b!1318543))

(assert (= (and b!1318543 res!875172) b!1318534))

(assert (= (and b!1318534 res!875169) b!1318544))

(assert (= (and b!1318544 res!875174) b!1318538))

(assert (= (and b!1318538 res!875173) b!1318541))

(assert (= (and b!1318541 res!875176) b!1318536))

(assert (= (and b!1318536 res!875171) b!1318542))

(assert (= (and b!1318542 res!875170) b!1318539))

(assert (= (and b!1318540 condMapEmpty!55499) mapIsEmpty!55499))

(assert (= (and b!1318540 (not condMapEmpty!55499)) mapNonEmpty!55499))

(get-info :version)

(assert (= (and mapNonEmpty!55499 ((_ is ValueCellFull!17052) mapValue!55499)) b!1318537))

(assert (= (and b!1318540 ((_ is ValueCellFull!17052) mapDefault!55499)) b!1318535))

(assert (= start!111460 b!1318540))

(declare-fun b_lambda!23417 () Bool)

(assert (=> (not b_lambda!23417) (not b!1318539)))

(declare-fun t!44177 () Bool)

(declare-fun tb!11441 () Bool)

(assert (=> (and start!111460 (= defaultEntry!1340 defaultEntry!1340) t!44177) tb!11441))

(declare-fun result!23929 () Bool)

(assert (=> tb!11441 (= result!23929 tp_is_empty!35901)))

(assert (=> b!1318539 t!44177))

(declare-fun b_and!48333 () Bool)

(assert (= b_and!48331 (and (=> t!44177 result!23929) b_and!48333)))

(declare-fun m!1206147 () Bool)

(assert (=> b!1318544 m!1206147))

(declare-fun m!1206149 () Bool)

(assert (=> b!1318534 m!1206149))

(declare-fun m!1206151 () Bool)

(assert (=> start!111460 m!1206151))

(declare-fun m!1206153 () Bool)

(assert (=> start!111460 m!1206153))

(declare-fun m!1206155 () Bool)

(assert (=> start!111460 m!1206155))

(declare-fun m!1206157 () Bool)

(assert (=> b!1318541 m!1206157))

(assert (=> b!1318541 m!1206157))

(declare-fun m!1206159 () Bool)

(assert (=> b!1318541 m!1206159))

(declare-fun m!1206161 () Bool)

(assert (=> mapNonEmpty!55499 m!1206161))

(declare-fun m!1206163 () Bool)

(assert (=> b!1318539 m!1206163))

(declare-fun m!1206165 () Bool)

(assert (=> b!1318539 m!1206165))

(declare-fun m!1206167 () Bool)

(assert (=> b!1318539 m!1206167))

(declare-fun m!1206169 () Bool)

(assert (=> b!1318539 m!1206169))

(declare-fun m!1206171 () Bool)

(assert (=> b!1318539 m!1206171))

(assert (=> b!1318539 m!1206167))

(assert (=> b!1318539 m!1206165))

(declare-fun m!1206173 () Bool)

(assert (=> b!1318539 m!1206173))

(assert (=> b!1318539 m!1206163))

(assert (=> b!1318539 m!1206169))

(declare-fun m!1206175 () Bool)

(assert (=> b!1318539 m!1206175))

(declare-fun m!1206177 () Bool)

(assert (=> b!1318539 m!1206177))

(declare-fun m!1206179 () Bool)

(assert (=> b!1318539 m!1206179))

(assert (=> b!1318542 m!1206177))

(assert (=> b!1318542 m!1206177))

(declare-fun m!1206181 () Bool)

(assert (=> b!1318542 m!1206181))

(assert (=> b!1318536 m!1206177))

(check-sat (not start!111460) (not b!1318539) (not mapNonEmpty!55499) (not b_next!30081) b_and!48333 (not b!1318541) (not b!1318534) (not b_lambda!23417) tp_is_empty!35901 (not b!1318544) (not b!1318542))
(check-sat b_and!48333 (not b_next!30081))
