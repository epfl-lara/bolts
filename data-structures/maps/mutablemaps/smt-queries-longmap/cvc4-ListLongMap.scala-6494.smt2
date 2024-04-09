; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82836 () Bool)

(assert start!82836)

(declare-fun b_free!18935 () Bool)

(declare-fun b_next!18935 () Bool)

(assert (=> start!82836 (= b_free!18935 (not b_next!18935))))

(declare-fun tp!65935 () Bool)

(declare-fun b_and!30441 () Bool)

(assert (=> start!82836 (= tp!65935 b_and!30441)))

(declare-fun b!965789 () Bool)

(declare-fun res!646586 () Bool)

(declare-fun e!544472 () Bool)

(assert (=> b!965789 (=> (not res!646586) (not e!544472))))

(declare-datatypes ((array!59551 0))(
  ( (array!59552 (arr!28640 (Array (_ BitVec 32) (_ BitVec 64))) (size!29120 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59551)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965789 (= res!646586 (validKeyInArray!0 (select (arr!28640 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34609 () Bool)

(declare-fun mapRes!34609 () Bool)

(assert (=> mapIsEmpty!34609 mapRes!34609))

(declare-fun b!965790 () Bool)

(declare-fun e!544474 () Bool)

(declare-fun tp_is_empty!21743 () Bool)

(assert (=> b!965790 (= e!544474 tp_is_empty!21743)))

(declare-fun res!646585 () Bool)

(assert (=> start!82836 (=> (not res!646585) (not e!544472))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82836 (= res!646585 (validMask!0 mask!2110))))

(assert (=> start!82836 e!544472))

(assert (=> start!82836 true))

(declare-datatypes ((V!33973 0))(
  ( (V!33974 (val!10922 Int)) )
))
(declare-datatypes ((ValueCell!10390 0))(
  ( (ValueCellFull!10390 (v!13480 V!33973)) (EmptyCell!10390) )
))
(declare-datatypes ((array!59553 0))(
  ( (array!59554 (arr!28641 (Array (_ BitVec 32) ValueCell!10390)) (size!29121 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59553)

(declare-fun e!544471 () Bool)

(declare-fun array_inv!22087 (array!59553) Bool)

(assert (=> start!82836 (and (array_inv!22087 _values!1400) e!544471)))

(declare-fun array_inv!22088 (array!59551) Bool)

(assert (=> start!82836 (array_inv!22088 _keys!1686)))

(assert (=> start!82836 tp!65935))

(assert (=> start!82836 tp_is_empty!21743))

(declare-fun mapNonEmpty!34609 () Bool)

(declare-fun tp!65934 () Bool)

(declare-fun e!544470 () Bool)

(assert (=> mapNonEmpty!34609 (= mapRes!34609 (and tp!65934 e!544470))))

(declare-fun mapKey!34609 () (_ BitVec 32))

(declare-fun mapValue!34609 () ValueCell!10390)

(declare-fun mapRest!34609 () (Array (_ BitVec 32) ValueCell!10390))

(assert (=> mapNonEmpty!34609 (= (arr!28641 _values!1400) (store mapRest!34609 mapKey!34609 mapValue!34609))))

(declare-fun b!965791 () Bool)

(declare-fun res!646581 () Bool)

(assert (=> b!965791 (=> (not res!646581) (not e!544472))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!965791 (= res!646581 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29120 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29120 _keys!1686))))))

(declare-fun b!965792 () Bool)

(assert (=> b!965792 (= e!544472 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33973)

(declare-fun zeroValue!1342 () V!33973)

(declare-fun lt!431223 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14124 0))(
  ( (tuple2!14125 (_1!7072 (_ BitVec 64)) (_2!7072 V!33973)) )
))
(declare-datatypes ((List!20003 0))(
  ( (Nil!20000) (Cons!19999 (h!21161 tuple2!14124) (t!28374 List!20003)) )
))
(declare-datatypes ((ListLongMap!12835 0))(
  ( (ListLongMap!12836 (toList!6433 List!20003)) )
))
(declare-fun contains!5484 (ListLongMap!12835 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3618 (array!59551 array!59553 (_ BitVec 32) (_ BitVec 32) V!33973 V!33973 (_ BitVec 32) Int) ListLongMap!12835)

(assert (=> b!965792 (= lt!431223 (contains!5484 (getCurrentListMap!3618 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28640 _keys!1686) i!803)))))

(declare-fun b!965793 () Bool)

(assert (=> b!965793 (= e!544471 (and e!544474 mapRes!34609))))

(declare-fun condMapEmpty!34609 () Bool)

(declare-fun mapDefault!34609 () ValueCell!10390)

