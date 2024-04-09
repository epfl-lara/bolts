; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133876 () Bool)

(assert start!133876)

(declare-fun b!1564728 () Bool)

(declare-fun e!872167 () Bool)

(declare-fun tp_is_empty!38891 () Bool)

(assert (=> b!1564728 (= e!872167 tp_is_empty!38891)))

(declare-fun b!1564729 () Bool)

(declare-fun res!1069782 () Bool)

(declare-fun e!872168 () Bool)

(assert (=> b!1564729 (=> (not res!1069782) (not e!872168))))

(declare-datatypes ((array!104439 0))(
  ( (array!104440 (arr!50405 (Array (_ BitVec 32) (_ BitVec 64))) (size!50956 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104439)

(declare-datatypes ((List!36744 0))(
  ( (Nil!36741) (Cons!36740 (h!38187 (_ BitVec 64)) (t!51598 List!36744)) )
))
(declare-fun arrayNoDuplicates!0 (array!104439 (_ BitVec 32) List!36744) Bool)

(assert (=> b!1564729 (= res!1069782 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36741))))

(declare-fun b!1564730 () Bool)

(declare-fun res!1069783 () Bool)

(assert (=> b!1564730 (=> (not res!1069783) (not e!872168))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104439 (_ BitVec 32)) Bool)

(assert (=> b!1564730 (= res!1069783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564731 () Bool)

(declare-fun res!1069781 () Bool)

(assert (=> b!1564731 (=> (not res!1069781) (not e!872168))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564731 (= res!1069781 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50956 _keys!637)) (bvslt from!782 (size!50956 _keys!637))))))

(declare-fun b!1564732 () Bool)

(declare-fun res!1069780 () Bool)

(assert (=> b!1564732 (=> (not res!1069780) (not e!872168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564732 (= res!1069780 (validKeyInArray!0 (select (arr!50405 _keys!637) from!782)))))

(declare-fun b!1564733 () Bool)

(assert (=> b!1564733 (= e!872168 (bvsge (bvsub (size!50956 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!50956 _keys!637)) from!782)))))

(declare-fun mapIsEmpty!59719 () Bool)

(declare-fun mapRes!59719 () Bool)

(assert (=> mapIsEmpty!59719 mapRes!59719))

(declare-fun res!1069785 () Bool)

(assert (=> start!133876 (=> (not res!1069785) (not e!872168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133876 (= res!1069785 (validMask!0 mask!947))))

(assert (=> start!133876 e!872168))

(assert (=> start!133876 true))

(declare-fun array_inv!39093 (array!104439) Bool)

(assert (=> start!133876 (array_inv!39093 _keys!637)))

(declare-datatypes ((V!60061 0))(
  ( (V!60062 (val!19529 Int)) )
))
(declare-datatypes ((ValueCell!18415 0))(
  ( (ValueCellFull!18415 (v!22280 V!60061)) (EmptyCell!18415) )
))
(declare-datatypes ((array!104441 0))(
  ( (array!104442 (arr!50406 (Array (_ BitVec 32) ValueCell!18415)) (size!50957 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104441)

(declare-fun e!872169 () Bool)

(declare-fun array_inv!39094 (array!104441) Bool)

(assert (=> start!133876 (and (array_inv!39094 _values!487) e!872169)))

(declare-fun mapNonEmpty!59719 () Bool)

(declare-fun tp!113645 () Bool)

(assert (=> mapNonEmpty!59719 (= mapRes!59719 (and tp!113645 e!872167))))

(declare-fun mapValue!59719 () ValueCell!18415)

(declare-fun mapKey!59719 () (_ BitVec 32))

(declare-fun mapRest!59719 () (Array (_ BitVec 32) ValueCell!18415))

(assert (=> mapNonEmpty!59719 (= (arr!50406 _values!487) (store mapRest!59719 mapKey!59719 mapValue!59719))))

(declare-fun b!1564734 () Bool)

(declare-fun e!872170 () Bool)

(assert (=> b!1564734 (= e!872170 tp_is_empty!38891)))

(declare-fun b!1564735 () Bool)

(declare-fun res!1069784 () Bool)

(assert (=> b!1564735 (=> (not res!1069784) (not e!872168))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564735 (= res!1069784 (and (= (size!50957 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50956 _keys!637) (size!50957 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564736 () Bool)

(assert (=> b!1564736 (= e!872169 (and e!872170 mapRes!59719))))

(declare-fun condMapEmpty!59719 () Bool)

(declare-fun mapDefault!59719 () ValueCell!18415)

