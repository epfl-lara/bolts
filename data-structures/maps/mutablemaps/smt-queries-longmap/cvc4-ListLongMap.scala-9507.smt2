; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112774 () Bool)

(assert start!112774)

(declare-fun b_free!31049 () Bool)

(declare-fun b_next!31049 () Bool)

(assert (=> start!112774 (= b_free!31049 (not b_next!31049))))

(declare-fun tp!108791 () Bool)

(declare-fun b_and!50041 () Bool)

(assert (=> start!112774 (= tp!108791 b_and!50041)))

(declare-fun b!1337274 () Bool)

(declare-fun e!761486 () Bool)

(declare-fun tp_is_empty!36959 () Bool)

(assert (=> b!1337274 (= e!761486 tp_is_empty!36959)))

(declare-fun mapIsEmpty!57119 () Bool)

(declare-fun mapRes!57119 () Bool)

(assert (=> mapIsEmpty!57119 mapRes!57119))

(declare-fun res!887531 () Bool)

(declare-fun e!761488 () Bool)

(assert (=> start!112774 (=> (not res!887531) (not e!761488))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112774 (= res!887531 (validMask!0 mask!1998))))

(assert (=> start!112774 e!761488))

(declare-datatypes ((V!54381 0))(
  ( (V!54382 (val!18554 Int)) )
))
(declare-datatypes ((ValueCell!17581 0))(
  ( (ValueCellFull!17581 (v!21193 V!54381)) (EmptyCell!17581) )
))
(declare-datatypes ((array!90749 0))(
  ( (array!90750 (arr!43834 (Array (_ BitVec 32) ValueCell!17581)) (size!44385 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90749)

(declare-fun e!761485 () Bool)

(declare-fun array_inv!32983 (array!90749) Bool)

(assert (=> start!112774 (and (array_inv!32983 _values!1320) e!761485)))

(assert (=> start!112774 true))

(declare-datatypes ((array!90751 0))(
  ( (array!90752 (arr!43835 (Array (_ BitVec 32) (_ BitVec 64))) (size!44386 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90751)

(declare-fun array_inv!32984 (array!90751) Bool)

(assert (=> start!112774 (array_inv!32984 _keys!1590)))

(assert (=> start!112774 tp!108791))

(assert (=> start!112774 tp_is_empty!36959))

(declare-fun b!1337275 () Bool)

(declare-fun res!887532 () Bool)

(assert (=> b!1337275 (=> (not res!887532) (not e!761488))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337275 (= res!887532 (validKeyInArray!0 (select (arr!43835 _keys!1590) from!1980)))))

(declare-fun b!1337276 () Bool)

(assert (=> b!1337276 (= e!761485 (and e!761486 mapRes!57119))))

(declare-fun condMapEmpty!57119 () Bool)

(declare-fun mapDefault!57119 () ValueCell!17581)

