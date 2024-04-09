; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133618 () Bool)

(assert start!133618)

(declare-fun b_free!32003 () Bool)

(declare-fun b_next!32003 () Bool)

(assert (=> start!133618 (= b_free!32003 (not b_next!32003))))

(declare-fun tp!113134 () Bool)

(declare-fun b_and!51527 () Bool)

(assert (=> start!133618 (= tp!113134 b_and!51527)))

(declare-fun b!1561700 () Bool)

(declare-fun e!870311 () Bool)

(assert (=> b!1561700 (= e!870311 true)))

(declare-datatypes ((array!104009 0))(
  ( (array!104010 (arr!50192 (Array (_ BitVec 32) (_ BitVec 64))) (size!50743 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104009)

(declare-datatypes ((V!59765 0))(
  ( (V!59766 (val!19418 Int)) )
))
(declare-datatypes ((tuple2!25236 0))(
  ( (tuple2!25237 (_1!12628 (_ BitVec 64)) (_2!12628 V!59765)) )
))
(declare-datatypes ((List!36613 0))(
  ( (Nil!36610) (Cons!36609 (h!38056 tuple2!25236) (t!51413 List!36613)) )
))
(declare-datatypes ((ListLongMap!22683 0))(
  ( (ListLongMap!22684 (toList!11357 List!36613)) )
))
(declare-fun lt!671270 () ListLongMap!22683)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671269 () Bool)

(declare-fun contains!10277 (ListLongMap!22683 (_ BitVec 64)) Bool)

(assert (=> b!1561700 (= lt!671269 (contains!10277 lt!671270 (select (arr!50192 _keys!637) from!782)))))

(declare-fun b!1561701 () Bool)

(declare-fun res!1067881 () Bool)

(declare-fun e!870309 () Bool)

(assert (=> b!1561701 (=> (not res!1067881) (not e!870309))))

(assert (=> b!1561701 (= res!1067881 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50743 _keys!637)) (bvslt from!782 (size!50743 _keys!637))))))

(declare-fun b!1561702 () Bool)

(declare-fun e!870308 () Bool)

(declare-fun tp_is_empty!38669 () Bool)

(assert (=> b!1561702 (= e!870308 tp_is_empty!38669)))

(declare-fun b!1561703 () Bool)

(declare-fun res!1067882 () Bool)

(assert (=> b!1561703 (=> (not res!1067882) (not e!870309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561703 (= res!1067882 (validKeyInArray!0 (select (arr!50192 _keys!637) from!782)))))

(declare-fun b!1561704 () Bool)

(declare-fun res!1067884 () Bool)

(assert (=> b!1561704 (=> (not res!1067884) (not e!870309))))

(declare-datatypes ((List!36614 0))(
  ( (Nil!36611) (Cons!36610 (h!38057 (_ BitVec 64)) (t!51414 List!36614)) )
))
(declare-fun arrayNoDuplicates!0 (array!104009 (_ BitVec 32) List!36614) Bool)

(assert (=> b!1561704 (= res!1067884 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36611))))

(declare-fun b!1561705 () Bool)

(declare-fun e!870306 () Bool)

(assert (=> b!1561705 (= e!870306 tp_is_empty!38669)))

(declare-fun mapIsEmpty!59379 () Bool)

(declare-fun mapRes!59379 () Bool)

(assert (=> mapIsEmpty!59379 mapRes!59379))

(declare-fun mapNonEmpty!59379 () Bool)

(declare-fun tp!113133 () Bool)

(assert (=> mapNonEmpty!59379 (= mapRes!59379 (and tp!113133 e!870308))))

(declare-datatypes ((ValueCell!18304 0))(
  ( (ValueCellFull!18304 (v!22167 V!59765)) (EmptyCell!18304) )
))
(declare-fun mapValue!59379 () ValueCell!18304)

(declare-datatypes ((array!104011 0))(
  ( (array!104012 (arr!50193 (Array (_ BitVec 32) ValueCell!18304)) (size!50744 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104011)

(declare-fun mapKey!59379 () (_ BitVec 32))

(declare-fun mapRest!59379 () (Array (_ BitVec 32) ValueCell!18304))

(assert (=> mapNonEmpty!59379 (= (arr!50193 _values!487) (store mapRest!59379 mapKey!59379 mapValue!59379))))

(declare-fun res!1067883 () Bool)

(assert (=> start!133618 (=> (not res!1067883) (not e!870309))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133618 (= res!1067883 (validMask!0 mask!947))))

(assert (=> start!133618 e!870309))

(assert (=> start!133618 tp!113134))

(assert (=> start!133618 tp_is_empty!38669))

(assert (=> start!133618 true))

(declare-fun array_inv!38941 (array!104009) Bool)

(assert (=> start!133618 (array_inv!38941 _keys!637)))

(declare-fun e!870310 () Bool)

(declare-fun array_inv!38942 (array!104011) Bool)

(assert (=> start!133618 (and (array_inv!38942 _values!487) e!870310)))

(declare-fun b!1561706 () Bool)

(declare-fun res!1067880 () Bool)

(assert (=> b!1561706 (=> (not res!1067880) (not e!870309))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561706 (= res!1067880 (and (= (size!50744 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50743 _keys!637) (size!50744 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561707 () Bool)

(declare-fun res!1067879 () Bool)

(assert (=> b!1561707 (=> (not res!1067879) (not e!870309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104009 (_ BitVec 32)) Bool)

(assert (=> b!1561707 (= res!1067879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561708 () Bool)

(assert (=> b!1561708 (= e!870310 (and e!870306 mapRes!59379))))

(declare-fun condMapEmpty!59379 () Bool)

(declare-fun mapDefault!59379 () ValueCell!18304)

