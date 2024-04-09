; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133450 () Bool)

(assert start!133450)

(declare-fun b!1559582 () Bool)

(declare-fun e!869042 () Bool)

(assert (=> b!1559582 (= e!869042 false)))

(declare-fun lt!670830 () Bool)

(declare-datatypes ((V!59541 0))(
  ( (V!59542 (val!19334 Int)) )
))
(declare-datatypes ((tuple2!25146 0))(
  ( (tuple2!25147 (_1!12583 (_ BitVec 64)) (_2!12583 V!59541)) )
))
(declare-datatypes ((List!36503 0))(
  ( (Nil!36500) (Cons!36499 (h!37946 tuple2!25146) (t!51243 List!36503)) )
))
(declare-datatypes ((ListLongMap!22593 0))(
  ( (ListLongMap!22594 (toList!11312 List!36503)) )
))
(declare-fun contains!10232 (ListLongMap!22593 (_ BitVec 64)) Bool)

(assert (=> b!1559582 (= lt!670830 (contains!10232 (ListLongMap!22594 Nil!36500) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1559583 () Bool)

(declare-fun res!1066577 () Bool)

(assert (=> b!1559583 (=> (not res!1066577) (not e!869042))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103681 0))(
  ( (array!103682 (arr!50028 (Array (_ BitVec 32) (_ BitVec 64))) (size!50579 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103681)

(declare-datatypes ((ValueCell!18220 0))(
  ( (ValueCellFull!18220 (v!22083 V!59541)) (EmptyCell!18220) )
))
(declare-datatypes ((array!103683 0))(
  ( (array!103684 (arr!50029 (Array (_ BitVec 32) ValueCell!18220)) (size!50580 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103683)

(assert (=> b!1559583 (= res!1066577 (and (= (size!50580 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50579 _keys!637) (size!50580 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1559584 () Bool)

(declare-fun e!869038 () Bool)

(declare-fun tp_is_empty!38501 () Bool)

(assert (=> b!1559584 (= e!869038 tp_is_empty!38501)))

(declare-fun b!1559585 () Bool)

(declare-fun res!1066580 () Bool)

(assert (=> b!1559585 (=> (not res!1066580) (not e!869042))))

(declare-datatypes ((List!36504 0))(
  ( (Nil!36501) (Cons!36500 (h!37947 (_ BitVec 64)) (t!51244 List!36504)) )
))
(declare-fun arrayNoDuplicates!0 (array!103681 (_ BitVec 32) List!36504) Bool)

(assert (=> b!1559585 (= res!1066580 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36501))))

(declare-fun b!1559586 () Bool)

(declare-fun res!1066576 () Bool)

(assert (=> b!1559586 (=> (not res!1066576) (not e!869042))))

(assert (=> b!1559586 (= res!1066576 (not (contains!10232 (ListLongMap!22594 Nil!36500) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1066578 () Bool)

(assert (=> start!133450 (=> (not res!1066578) (not e!869042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133450 (= res!1066578 (validMask!0 mask!947))))

(assert (=> start!133450 e!869042))

(assert (=> start!133450 true))

(declare-fun array_inv!38813 (array!103681) Bool)

(assert (=> start!133450 (array_inv!38813 _keys!637)))

(declare-fun e!869039 () Bool)

(declare-fun array_inv!38814 (array!103683) Bool)

(assert (=> start!133450 (and (array_inv!38814 _values!487) e!869039)))

(declare-fun b!1559587 () Bool)

(declare-fun res!1066579 () Bool)

(assert (=> b!1559587 (=> (not res!1066579) (not e!869042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103681 (_ BitVec 32)) Bool)

(assert (=> b!1559587 (= res!1066579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1559588 () Bool)

(declare-fun e!869040 () Bool)

(declare-fun mapRes!59127 () Bool)

(assert (=> b!1559588 (= e!869039 (and e!869040 mapRes!59127))))

(declare-fun condMapEmpty!59127 () Bool)

(declare-fun mapDefault!59127 () ValueCell!18220)

