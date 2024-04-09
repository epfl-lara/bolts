; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111428 () Bool)

(assert start!111428)

(declare-fun b_free!30049 () Bool)

(declare-fun b_next!30049 () Bool)

(assert (=> start!111428 (= b_free!30049 (not b_next!30049))))

(declare-fun tp!105624 () Bool)

(declare-fun b_and!48279 () Bool)

(assert (=> start!111428 (= tp!105624 b_and!48279)))

(declare-fun b!1318008 () Bool)

(declare-fun res!874810 () Bool)

(declare-fun e!752181 () Bool)

(assert (=> b!1318008 (=> (not res!874810) (not e!752181))))

(declare-datatypes ((array!88641 0))(
  ( (array!88642 (arr!42790 (Array (_ BitVec 32) (_ BitVec 64))) (size!43341 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88641)

(declare-datatypes ((List!30516 0))(
  ( (Nil!30513) (Cons!30512 (h!31721 (_ BitVec 64)) (t!44131 List!30516)) )
))
(declare-fun arrayNoDuplicates!0 (array!88641 (_ BitVec 32) List!30516) Bool)

(assert (=> b!1318008 (= res!874810 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30513))))

(declare-fun b!1318009 () Bool)

(declare-fun e!752178 () Bool)

(declare-fun tp_is_empty!35869 () Bool)

(assert (=> b!1318009 (= e!752178 tp_is_empty!35869)))

(declare-fun b!1318010 () Bool)

(declare-fun res!874806 () Bool)

(assert (=> b!1318010 (=> (not res!874806) (not e!752181))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88641 (_ BitVec 32)) Bool)

(assert (=> b!1318010 (= res!874806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318011 () Bool)

(assert (=> b!1318011 (= e!752181 false)))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52929 0))(
  ( (V!52930 (val!18009 Int)) )
))
(declare-fun zeroValue!1279 () V!52929)

(declare-datatypes ((ValueCell!17036 0))(
  ( (ValueCellFull!17036 (v!20637 V!52929)) (EmptyCell!17036) )
))
(declare-datatypes ((array!88643 0))(
  ( (array!88644 (arr!42791 (Array (_ BitVec 32) ValueCell!17036)) (size!43342 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88643)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun minValue!1279 () V!52929)

(declare-fun lt!586381 () Bool)

(declare-datatypes ((tuple2!23326 0))(
  ( (tuple2!23327 (_1!11673 (_ BitVec 64)) (_2!11673 V!52929)) )
))
(declare-datatypes ((List!30517 0))(
  ( (Nil!30514) (Cons!30513 (h!31722 tuple2!23326) (t!44132 List!30517)) )
))
(declare-datatypes ((ListLongMap!20995 0))(
  ( (ListLongMap!20996 (toList!10513 List!30517)) )
))
(declare-fun contains!8604 (ListLongMap!20995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5469 (array!88641 array!88643 (_ BitVec 32) (_ BitVec 32) V!52929 V!52929 (_ BitVec 32) Int) ListLongMap!20995)

(assert (=> b!1318011 (= lt!586381 (contains!8604 (getCurrentListMap!5469 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318012 () Bool)

(declare-fun res!874809 () Bool)

(assert (=> b!1318012 (=> (not res!874809) (not e!752181))))

(assert (=> b!1318012 (= res!874809 (and (= (size!43342 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43341 _keys!1609) (size!43342 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318013 () Bool)

(declare-fun e!752182 () Bool)

(declare-fun e!752180 () Bool)

(declare-fun mapRes!55451 () Bool)

(assert (=> b!1318013 (= e!752182 (and e!752180 mapRes!55451))))

(declare-fun condMapEmpty!55451 () Bool)

(declare-fun mapDefault!55451 () ValueCell!17036)

