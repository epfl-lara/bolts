; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113436 () Bool)

(assert start!113436)

(declare-fun b_free!31451 () Bool)

(declare-fun b_next!31451 () Bool)

(assert (=> start!113436 (= b_free!31451 (not b_next!31451))))

(declare-fun tp!110158 () Bool)

(declare-fun b_and!50749 () Bool)

(assert (=> start!113436 (= tp!110158 b_and!50749)))

(declare-fun b!1346053 () Bool)

(declare-fun res!893269 () Bool)

(declare-fun e!765913 () Bool)

(assert (=> b!1346053 (=> (not res!893269) (not e!765913))))

(declare-datatypes ((array!91697 0))(
  ( (array!91698 (arr!44300 (Array (_ BitVec 32) (_ BitVec 64))) (size!44851 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91697)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91697 (_ BitVec 32)) Bool)

(assert (=> b!1346053 (= res!893269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57883 () Bool)

(declare-fun mapRes!57883 () Bool)

(declare-fun tp!110159 () Bool)

(declare-fun e!765914 () Bool)

(assert (=> mapNonEmpty!57883 (= mapRes!57883 (and tp!110159 e!765914))))

(declare-datatypes ((V!55037 0))(
  ( (V!55038 (val!18800 Int)) )
))
(declare-datatypes ((ValueCell!17827 0))(
  ( (ValueCellFull!17827 (v!21446 V!55037)) (EmptyCell!17827) )
))
(declare-fun mapRest!57883 () (Array (_ BitVec 32) ValueCell!17827))

(declare-fun mapKey!57883 () (_ BitVec 32))

(declare-fun mapValue!57883 () ValueCell!17827)

(declare-datatypes ((array!91699 0))(
  ( (array!91700 (arr!44301 (Array (_ BitVec 32) ValueCell!17827)) (size!44852 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91699)

(assert (=> mapNonEmpty!57883 (= (arr!44301 _values!1303) (store mapRest!57883 mapKey!57883 mapValue!57883))))

(declare-fun b!1346054 () Bool)

(declare-fun res!893268 () Bool)

(assert (=> b!1346054 (=> (not res!893268) (not e!765913))))

(declare-datatypes ((List!31546 0))(
  ( (Nil!31543) (Cons!31542 (h!32751 (_ BitVec 64)) (t!46143 List!31546)) )
))
(declare-fun arrayNoDuplicates!0 (array!91697 (_ BitVec 32) List!31546) Bool)

(assert (=> b!1346054 (= res!893268 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31543))))

(declare-fun b!1346055 () Bool)

(declare-fun res!893266 () Bool)

(assert (=> b!1346055 (=> (not res!893266) (not e!765913))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346055 (= res!893266 (and (= (size!44852 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44851 _keys!1571) (size!44852 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346056 () Bool)

(declare-fun e!765915 () Bool)

(declare-fun e!765917 () Bool)

(assert (=> b!1346056 (= e!765915 (and e!765917 mapRes!57883))))

(declare-fun condMapEmpty!57883 () Bool)

(declare-fun mapDefault!57883 () ValueCell!17827)

