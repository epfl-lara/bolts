; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112714 () Bool)

(assert start!112714)

(declare-fun b_free!31015 () Bool)

(declare-fun b_next!31015 () Bool)

(assert (=> start!112714 (= b_free!31015 (not b_next!31015))))

(declare-fun tp!108686 () Bool)

(declare-fun b_and!49977 () Bool)

(assert (=> start!112714 (= tp!108686 b_and!49977)))

(declare-fun b!1336494 () Bool)

(declare-fun res!887044 () Bool)

(declare-fun e!761109 () Bool)

(assert (=> b!1336494 (=> (not res!887044) (not e!761109))))

(declare-datatypes ((array!90681 0))(
  ( (array!90682 (arr!43801 (Array (_ BitVec 32) (_ BitVec 64))) (size!44352 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90681)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90681 (_ BitVec 32)) Bool)

(assert (=> b!1336494 (= res!887044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336495 () Bool)

(declare-fun res!887041 () Bool)

(assert (=> b!1336495 (=> (not res!887041) (not e!761109))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336495 (= res!887041 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336496 () Bool)

(declare-fun res!887040 () Bool)

(assert (=> b!1336496 (=> (not res!887040) (not e!761109))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1336496 (= res!887040 (not (= (select (arr!43801 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336497 () Bool)

(declare-fun res!887042 () Bool)

(assert (=> b!1336497 (=> (not res!887042) (not e!761109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336497 (= res!887042 (validKeyInArray!0 (select (arr!43801 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!57065 () Bool)

(declare-fun mapRes!57065 () Bool)

(assert (=> mapIsEmpty!57065 mapRes!57065))

(declare-fun b!1336498 () Bool)

(declare-fun e!761110 () Bool)

(declare-fun tp_is_empty!36925 () Bool)

(assert (=> b!1336498 (= e!761110 tp_is_empty!36925)))

(declare-fun b!1336500 () Bool)

(declare-fun e!761112 () Bool)

(declare-fun e!761113 () Bool)

(assert (=> b!1336500 (= e!761112 (and e!761113 mapRes!57065))))

(declare-fun condMapEmpty!57065 () Bool)

(declare-datatypes ((V!54337 0))(
  ( (V!54338 (val!18537 Int)) )
))
(declare-datatypes ((ValueCell!17564 0))(
  ( (ValueCellFull!17564 (v!21175 V!54337)) (EmptyCell!17564) )
))
(declare-datatypes ((array!90683 0))(
  ( (array!90684 (arr!43802 (Array (_ BitVec 32) ValueCell!17564)) (size!44353 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90683)

(declare-fun mapDefault!57065 () ValueCell!17564)

