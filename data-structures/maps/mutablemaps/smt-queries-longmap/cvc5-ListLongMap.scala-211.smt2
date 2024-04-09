; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3946 () Bool)

(assert start!3946)

(declare-fun b_free!853 () Bool)

(declare-fun b_next!853 () Bool)

(assert (=> start!3946 (= b_free!853 (not b_next!853))))

(declare-fun tp!3978 () Bool)

(declare-fun b_and!1665 () Bool)

(assert (=> start!3946 (= tp!3978 b_and!1665)))

(declare-fun b!28205 () Bool)

(declare-fun res!16762 () Bool)

(declare-fun e!18265 () Bool)

(assert (=> b!28205 (=> (not res!16762) (not e!18265))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28205 (= res!16762 (validKeyInArray!0 k!1304))))

(declare-fun b!28206 () Bool)

(declare-fun res!16760 () Bool)

(assert (=> b!28206 (=> (not res!16760) (not e!18265))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1435 0))(
  ( (V!1436 (val!630 Int)) )
))
(declare-datatypes ((ValueCell!404 0))(
  ( (ValueCellFull!404 (v!1719 V!1435)) (EmptyCell!404) )
))
(declare-datatypes ((array!1639 0))(
  ( (array!1640 (arr!773 (Array (_ BitVec 32) ValueCell!404)) (size!874 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1639)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1641 0))(
  ( (array!1642 (arr!774 (Array (_ BitVec 32) (_ BitVec 64))) (size!875 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1641)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1435)

(declare-fun minValue!1443 () V!1435)

(declare-datatypes ((tuple2!1032 0))(
  ( (tuple2!1033 (_1!526 (_ BitVec 64)) (_2!526 V!1435)) )
))
(declare-datatypes ((List!648 0))(
  ( (Nil!645) (Cons!644 (h!1211 tuple2!1032) (t!3343 List!648)) )
))
(declare-datatypes ((ListLongMap!613 0))(
  ( (ListLongMap!614 (toList!322 List!648)) )
))
(declare-fun contains!259 (ListLongMap!613 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!150 (array!1641 array!1639 (_ BitVec 32) (_ BitVec 32) V!1435 V!1435 (_ BitVec 32) Int) ListLongMap!613)

(assert (=> b!28206 (= res!16760 (not (contains!259 (getCurrentListMap!150 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!28207 () Bool)

(assert (=> b!28207 (= e!18265 false)))

(declare-fun lt!10764 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1641 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28207 (= lt!10764 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun res!16759 () Bool)

(assert (=> start!3946 (=> (not res!16759) (not e!18265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3946 (= res!16759 (validMask!0 mask!2294))))

(assert (=> start!3946 e!18265))

(assert (=> start!3946 true))

(assert (=> start!3946 tp!3978))

(declare-fun e!18262 () Bool)

(declare-fun array_inv!527 (array!1639) Bool)

(assert (=> start!3946 (and (array_inv!527 _values!1501) e!18262)))

(declare-fun array_inv!528 (array!1641) Bool)

(assert (=> start!3946 (array_inv!528 _keys!1833)))

(declare-fun tp_is_empty!1207 () Bool)

(assert (=> start!3946 tp_is_empty!1207))

(declare-fun b!28208 () Bool)

(declare-fun e!18261 () Bool)

(declare-fun mapRes!1339 () Bool)

(assert (=> b!28208 (= e!18262 (and e!18261 mapRes!1339))))

(declare-fun condMapEmpty!1339 () Bool)

(declare-fun mapDefault!1339 () ValueCell!404)

