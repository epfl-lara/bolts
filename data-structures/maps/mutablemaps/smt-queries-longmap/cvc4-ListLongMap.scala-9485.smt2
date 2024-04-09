; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112558 () Bool)

(assert start!112558)

(declare-fun b_free!30917 () Bool)

(declare-fun b_next!30917 () Bool)

(assert (=> start!112558 (= b_free!30917 (not b_next!30917))))

(declare-fun tp!108389 () Bool)

(declare-fun b_and!49835 () Bool)

(assert (=> start!112558 (= tp!108389 b_and!49835)))

(declare-fun res!885854 () Bool)

(declare-fun e!760131 () Bool)

(assert (=> start!112558 (=> (not res!885854) (not e!760131))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112558 (= res!885854 (validMask!0 mask!1998))))

(assert (=> start!112558 e!760131))

(declare-datatypes ((V!54205 0))(
  ( (V!54206 (val!18488 Int)) )
))
(declare-datatypes ((ValueCell!17515 0))(
  ( (ValueCellFull!17515 (v!21123 V!54205)) (EmptyCell!17515) )
))
(declare-datatypes ((array!90495 0))(
  ( (array!90496 (arr!43709 (Array (_ BitVec 32) ValueCell!17515)) (size!44260 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90495)

(declare-fun e!760133 () Bool)

(declare-fun array_inv!32899 (array!90495) Bool)

(assert (=> start!112558 (and (array_inv!32899 _values!1320) e!760133)))

(assert (=> start!112558 true))

(declare-datatypes ((array!90497 0))(
  ( (array!90498 (arr!43710 (Array (_ BitVec 32) (_ BitVec 64))) (size!44261 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90497)

(declare-fun array_inv!32900 (array!90497) Bool)

(assert (=> start!112558 (array_inv!32900 _keys!1590)))

(assert (=> start!112558 tp!108389))

(declare-fun tp_is_empty!36827 () Bool)

(assert (=> start!112558 tp_is_empty!36827))

(declare-fun mapNonEmpty!56914 () Bool)

(declare-fun mapRes!56914 () Bool)

(declare-fun tp!108388 () Bool)

(declare-fun e!760134 () Bool)

(assert (=> mapNonEmpty!56914 (= mapRes!56914 (and tp!108388 e!760134))))

(declare-fun mapValue!56914 () ValueCell!17515)

(declare-fun mapKey!56914 () (_ BitVec 32))

(declare-fun mapRest!56914 () (Array (_ BitVec 32) ValueCell!17515))

(assert (=> mapNonEmpty!56914 (= (arr!43709 _values!1320) (store mapRest!56914 mapKey!56914 mapValue!56914))))

(declare-fun b!1334617 () Bool)

(declare-fun res!885856 () Bool)

(assert (=> b!1334617 (=> (not res!885856) (not e!760131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90497 (_ BitVec 32)) Bool)

(assert (=> b!1334617 (= res!885856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334618 () Bool)

(declare-fun res!885857 () Bool)

(assert (=> b!1334618 (=> (not res!885857) (not e!760131))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334618 (= res!885857 (and (= (size!44260 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44261 _keys!1590) (size!44260 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334619 () Bool)

(declare-fun res!885855 () Bool)

(assert (=> b!1334619 (=> (not res!885855) (not e!760131))))

(declare-datatypes ((List!31168 0))(
  ( (Nil!31165) (Cons!31164 (h!32373 (_ BitVec 64)) (t!45439 List!31168)) )
))
(declare-fun arrayNoDuplicates!0 (array!90497 (_ BitVec 32) List!31168) Bool)

(assert (=> b!1334619 (= res!885855 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31165))))

(declare-fun b!1334620 () Bool)

(declare-fun e!760135 () Bool)

(assert (=> b!1334620 (= e!760133 (and e!760135 mapRes!56914))))

(declare-fun condMapEmpty!56914 () Bool)

(declare-fun mapDefault!56914 () ValueCell!17515)

