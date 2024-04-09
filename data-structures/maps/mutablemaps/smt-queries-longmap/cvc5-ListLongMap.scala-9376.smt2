; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111728 () Bool)

(assert start!111728)

(declare-fun b_free!30349 () Bool)

(declare-fun b_next!30349 () Bool)

(assert (=> start!111728 (= b_free!30349 (not b_next!30349))))

(declare-fun tp!106524 () Bool)

(declare-fun b_and!48867 () Bool)

(assert (=> start!111728 (= tp!106524 b_and!48867)))

(declare-fun mapIsEmpty!55901 () Bool)

(declare-fun mapRes!55901 () Bool)

(assert (=> mapIsEmpty!55901 mapRes!55901))

(declare-fun res!878389 () Bool)

(declare-fun e!754431 () Bool)

(assert (=> start!111728 (=> (not res!878389) (not e!754431))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111728 (= res!878389 (validMask!0 mask!2019))))

(assert (=> start!111728 e!754431))

(declare-datatypes ((array!89213 0))(
  ( (array!89214 (arr!43076 (Array (_ BitVec 32) (_ BitVec 64))) (size!43627 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89213)

(declare-fun array_inv!32475 (array!89213) Bool)

(assert (=> start!111728 (array_inv!32475 _keys!1609)))

(assert (=> start!111728 true))

(declare-fun tp_is_empty!36169 () Bool)

(assert (=> start!111728 tp_is_empty!36169))

(declare-datatypes ((V!53329 0))(
  ( (V!53330 (val!18159 Int)) )
))
(declare-datatypes ((ValueCell!17186 0))(
  ( (ValueCellFull!17186 (v!20787 V!53329)) (EmptyCell!17186) )
))
(declare-datatypes ((array!89215 0))(
  ( (array!89216 (arr!43077 (Array (_ BitVec 32) ValueCell!17186)) (size!43628 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89215)

(declare-fun e!754428 () Bool)

(declare-fun array_inv!32476 (array!89215) Bool)

(assert (=> start!111728 (and (array_inv!32476 _values!1337) e!754428)))

(assert (=> start!111728 tp!106524))

(declare-fun b!1323224 () Bool)

(declare-fun res!878386 () Bool)

(assert (=> b!1323224 (=> (not res!878386) (not e!754431))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1323224 (= res!878386 (and (= (size!43628 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43627 _keys!1609) (size!43628 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323225 () Bool)

(declare-fun res!878391 () Bool)

(assert (=> b!1323225 (=> (not res!878391) (not e!754431))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323225 (= res!878391 (not (= (select (arr!43076 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323226 () Bool)

(declare-fun e!754430 () Bool)

(assert (=> b!1323226 (= e!754430 tp_is_empty!36169)))

(declare-fun b!1323227 () Bool)

(declare-fun res!878388 () Bool)

(assert (=> b!1323227 (=> (not res!878388) (not e!754431))))

(declare-datatypes ((List!30733 0))(
  ( (Nil!30730) (Cons!30729 (h!31938 (_ BitVec 64)) (t!44638 List!30733)) )
))
(declare-fun arrayNoDuplicates!0 (array!89213 (_ BitVec 32) List!30733) Bool)

(assert (=> b!1323227 (= res!878388 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30730))))

(declare-fun b!1323228 () Bool)

(assert (=> b!1323228 (= e!754428 (and e!754430 mapRes!55901))))

(declare-fun condMapEmpty!55901 () Bool)

(declare-fun mapDefault!55901 () ValueCell!17186)

