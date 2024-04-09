; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82874 () Bool)

(assert start!82874)

(declare-fun b_free!18973 () Bool)

(declare-fun b_next!18973 () Bool)

(assert (=> start!82874 (= b_free!18973 (not b_next!18973))))

(declare-fun tp!66048 () Bool)

(declare-fun b_and!30479 () Bool)

(assert (=> start!82874 (= tp!66048 b_and!30479)))

(declare-fun mapNonEmpty!34666 () Bool)

(declare-fun mapRes!34666 () Bool)

(declare-fun tp!66049 () Bool)

(declare-fun e!544755 () Bool)

(assert (=> mapNonEmpty!34666 (= mapRes!34666 (and tp!66049 e!544755))))

(declare-datatypes ((V!34025 0))(
  ( (V!34026 (val!10941 Int)) )
))
(declare-datatypes ((ValueCell!10409 0))(
  ( (ValueCellFull!10409 (v!13499 V!34025)) (EmptyCell!10409) )
))
(declare-fun mapRest!34666 () (Array (_ BitVec 32) ValueCell!10409))

(declare-datatypes ((array!59625 0))(
  ( (array!59626 (arr!28677 (Array (_ BitVec 32) ValueCell!10409)) (size!29157 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59625)

(declare-fun mapValue!34666 () ValueCell!10409)

(declare-fun mapKey!34666 () (_ BitVec 32))

(assert (=> mapNonEmpty!34666 (= (arr!28677 _values!1400) (store mapRest!34666 mapKey!34666 mapValue!34666))))

(declare-fun b!966302 () Bool)

(declare-fun res!646925 () Bool)

(declare-fun e!544759 () Bool)

(assert (=> b!966302 (=> (not res!646925) (not e!544759))))

(declare-datatypes ((array!59627 0))(
  ( (array!59628 (arr!28678 (Array (_ BitVec 32) (_ BitVec 64))) (size!29158 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59627)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966302 (= res!646925 (validKeyInArray!0 (select (arr!28678 _keys!1686) i!803)))))

(declare-fun b!966303 () Bool)

(assert (=> b!966303 (= e!544759 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431280 () Bool)

(declare-fun minValue!1342 () V!34025)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34025)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14156 0))(
  ( (tuple2!14157 (_1!7088 (_ BitVec 64)) (_2!7088 V!34025)) )
))
(declare-datatypes ((List!20031 0))(
  ( (Nil!20028) (Cons!20027 (h!21189 tuple2!14156) (t!28402 List!20031)) )
))
(declare-datatypes ((ListLongMap!12867 0))(
  ( (ListLongMap!12868 (toList!6449 List!20031)) )
))
(declare-fun contains!5500 (ListLongMap!12867 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3634 (array!59627 array!59625 (_ BitVec 32) (_ BitVec 32) V!34025 V!34025 (_ BitVec 32) Int) ListLongMap!12867)

(assert (=> b!966303 (= lt!431280 (contains!5500 (getCurrentListMap!3634 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28678 _keys!1686) i!803)))))

(declare-fun b!966304 () Bool)

(declare-fun tp_is_empty!21781 () Bool)

(assert (=> b!966304 (= e!544755 tp_is_empty!21781)))

(declare-fun res!646926 () Bool)

(assert (=> start!82874 (=> (not res!646926) (not e!544759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82874 (= res!646926 (validMask!0 mask!2110))))

(assert (=> start!82874 e!544759))

(assert (=> start!82874 true))

(declare-fun e!544757 () Bool)

(declare-fun array_inv!22111 (array!59625) Bool)

(assert (=> start!82874 (and (array_inv!22111 _values!1400) e!544757)))

(declare-fun array_inv!22112 (array!59627) Bool)

(assert (=> start!82874 (array_inv!22112 _keys!1686)))

(assert (=> start!82874 tp!66048))

(assert (=> start!82874 tp_is_empty!21781))

(declare-fun b!966305 () Bool)

(declare-fun res!646924 () Bool)

(assert (=> b!966305 (=> (not res!646924) (not e!544759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59627 (_ BitVec 32)) Bool)

(assert (=> b!966305 (= res!646924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966306 () Bool)

(declare-fun e!544758 () Bool)

(assert (=> b!966306 (= e!544757 (and e!544758 mapRes!34666))))

(declare-fun condMapEmpty!34666 () Bool)

(declare-fun mapDefault!34666 () ValueCell!10409)

