; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111570 () Bool)

(assert start!111570)

(declare-fun b_free!30191 () Bool)

(declare-fun b_next!30191 () Bool)

(assert (=> start!111570 (= b_free!30191 (not b_next!30191))))

(declare-fun tp!106049 () Bool)

(declare-fun b_and!48551 () Bool)

(assert (=> start!111570 (= tp!106049 b_and!48551)))

(declare-fun b!1320459 () Bool)

(declare-fun res!876492 () Bool)

(declare-fun e!753243 () Bool)

(assert (=> b!1320459 (=> (not res!876492) (not e!753243))))

(declare-datatypes ((array!88917 0))(
  ( (array!88918 (arr!42928 (Array (_ BitVec 32) (_ BitVec 64))) (size!43479 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88917)

(declare-datatypes ((List!30627 0))(
  ( (Nil!30624) (Cons!30623 (h!31832 (_ BitVec 64)) (t!44374 List!30627)) )
))
(declare-fun arrayNoDuplicates!0 (array!88917 (_ BitVec 32) List!30627) Bool)

(assert (=> b!1320459 (= res!876492 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30624))))

(declare-fun b!1320460 () Bool)

(declare-fun e!753246 () Bool)

(declare-fun tp_is_empty!36011 () Bool)

(assert (=> b!1320460 (= e!753246 tp_is_empty!36011)))

(declare-fun mapNonEmpty!55664 () Bool)

(declare-fun mapRes!55664 () Bool)

(declare-fun tp!106050 () Bool)

(assert (=> mapNonEmpty!55664 (= mapRes!55664 (and tp!106050 e!753246))))

(declare-datatypes ((V!53117 0))(
  ( (V!53118 (val!18080 Int)) )
))
(declare-datatypes ((ValueCell!17107 0))(
  ( (ValueCellFull!17107 (v!20708 V!53117)) (EmptyCell!17107) )
))
(declare-fun mapValue!55664 () ValueCell!17107)

(declare-fun mapRest!55664 () (Array (_ BitVec 32) ValueCell!17107))

(declare-fun mapKey!55664 () (_ BitVec 32))

(declare-datatypes ((array!88919 0))(
  ( (array!88920 (arr!42929 (Array (_ BitVec 32) ValueCell!17107)) (size!43480 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88919)

(assert (=> mapNonEmpty!55664 (= (arr!42929 _values!1337) (store mapRest!55664 mapKey!55664 mapValue!55664))))

(declare-fun b!1320461 () Bool)

(declare-fun e!753245 () Bool)

(assert (=> b!1320461 (= e!753245 tp_is_empty!36011)))

(declare-fun b!1320462 () Bool)

(declare-fun res!876494 () Bool)

(assert (=> b!1320462 (=> (not res!876494) (not e!753243))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88917 (_ BitVec 32)) Bool)

(assert (=> b!1320462 (= res!876494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!876491 () Bool)

(assert (=> start!111570 (=> (not res!876491) (not e!753243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111570 (= res!876491 (validMask!0 mask!2019))))

(assert (=> start!111570 e!753243))

(declare-fun array_inv!32365 (array!88917) Bool)

(assert (=> start!111570 (array_inv!32365 _keys!1609)))

(assert (=> start!111570 true))

(assert (=> start!111570 tp_is_empty!36011))

(declare-fun e!753247 () Bool)

(declare-fun array_inv!32366 (array!88919) Bool)

(assert (=> start!111570 (and (array_inv!32366 _values!1337) e!753247)))

(assert (=> start!111570 tp!106049))

(declare-fun b!1320463 () Bool)

(declare-fun res!876490 () Bool)

(assert (=> b!1320463 (=> (not res!876490) (not e!753243))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320463 (= res!876490 (not (= (select (arr!42928 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320464 () Bool)

(declare-fun res!876496 () Bool)

(assert (=> b!1320464 (=> (not res!876496) (not e!753243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320464 (= res!876496 (validKeyInArray!0 (select (arr!42928 _keys!1609) from!2000)))))

(declare-fun b!1320465 () Bool)

(declare-fun res!876489 () Bool)

(assert (=> b!1320465 (=> (not res!876489) (not e!753243))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1320465 (= res!876489 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43479 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320466 () Bool)

(assert (=> b!1320466 (= e!753247 (and e!753245 mapRes!55664))))

(declare-fun condMapEmpty!55664 () Bool)

(declare-fun mapDefault!55664 () ValueCell!17107)

