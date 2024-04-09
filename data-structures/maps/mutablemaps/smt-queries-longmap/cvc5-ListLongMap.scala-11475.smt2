; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133680 () Bool)

(assert start!133680)

(declare-fun b!1562561 () Bool)

(declare-fun e!870774 () Bool)

(declare-fun tp_is_empty!38731 () Bool)

(assert (=> b!1562561 (= e!870774 tp_is_empty!38731)))

(declare-fun res!1068405 () Bool)

(declare-fun e!870776 () Bool)

(assert (=> start!133680 (=> (not res!1068405) (not e!870776))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133680 (= res!1068405 (validMask!0 mask!947))))

(assert (=> start!133680 e!870776))

(assert (=> start!133680 true))

(declare-datatypes ((V!59849 0))(
  ( (V!59850 (val!19449 Int)) )
))
(declare-datatypes ((ValueCell!18335 0))(
  ( (ValueCellFull!18335 (v!22198 V!59849)) (EmptyCell!18335) )
))
(declare-datatypes ((array!104127 0))(
  ( (array!104128 (arr!50251 (Array (_ BitVec 32) ValueCell!18335)) (size!50802 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104127)

(declare-fun e!870772 () Bool)

(declare-fun array_inv!38985 (array!104127) Bool)

(assert (=> start!133680 (and (array_inv!38985 _values!487) e!870772)))

(declare-datatypes ((array!104129 0))(
  ( (array!104130 (arr!50252 (Array (_ BitVec 32) (_ BitVec 64))) (size!50803 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104129)

(declare-fun array_inv!38986 (array!104129) Bool)

(assert (=> start!133680 (array_inv!38986 _keys!637)))

(declare-fun b!1562562 () Bool)

(declare-fun res!1068407 () Bool)

(assert (=> b!1562562 (=> (not res!1068407) (not e!870776))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562562 (= res!1068407 (and (= (size!50802 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50803 _keys!637) (size!50802 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59472 () Bool)

(declare-fun mapRes!59472 () Bool)

(assert (=> mapIsEmpty!59472 mapRes!59472))

(declare-fun b!1562563 () Bool)

(declare-fun e!870775 () Bool)

(assert (=> b!1562563 (= e!870775 tp_is_empty!38731)))

(declare-fun b!1562564 () Bool)

(declare-fun res!1068406 () Bool)

(assert (=> b!1562564 (=> (not res!1068406) (not e!870776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104129 (_ BitVec 32)) Bool)

(assert (=> b!1562564 (= res!1068406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562565 () Bool)

(assert (=> b!1562565 (= e!870776 false)))

(declare-fun lt!671688 () Bool)

(declare-datatypes ((List!36652 0))(
  ( (Nil!36649) (Cons!36648 (h!38095 (_ BitVec 64)) (t!51506 List!36652)) )
))
(declare-fun arrayNoDuplicates!0 (array!104129 (_ BitVec 32) List!36652) Bool)

(assert (=> b!1562565 (= lt!671688 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36649))))

(declare-fun b!1562566 () Bool)

(assert (=> b!1562566 (= e!870772 (and e!870774 mapRes!59472))))

(declare-fun condMapEmpty!59472 () Bool)

(declare-fun mapDefault!59472 () ValueCell!18335)

