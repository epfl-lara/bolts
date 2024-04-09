; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82974 () Bool)

(assert start!82974)

(declare-fun b_free!19073 () Bool)

(declare-fun b_next!19073 () Bool)

(assert (=> start!82974 (= b_free!19073 (not b_next!19073))))

(declare-fun tp!66348 () Bool)

(declare-fun b_and!30579 () Bool)

(assert (=> start!82974 (= tp!66348 b_and!30579)))

(declare-fun b!967893 () Bool)

(declare-fun res!648069 () Bool)

(declare-fun e!545505 () Bool)

(assert (=> b!967893 (=> (not res!648069) (not e!545505))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967893 (= res!648069 (bvsgt from!2084 newFrom!159))))

(declare-fun mapNonEmpty!34816 () Bool)

(declare-fun mapRes!34816 () Bool)

(declare-fun tp!66349 () Bool)

(declare-fun e!545508 () Bool)

(assert (=> mapNonEmpty!34816 (= mapRes!34816 (and tp!66349 e!545508))))

(declare-fun mapKey!34816 () (_ BitVec 32))

(declare-datatypes ((V!34157 0))(
  ( (V!34158 (val!10991 Int)) )
))
(declare-datatypes ((ValueCell!10459 0))(
  ( (ValueCellFull!10459 (v!13549 V!34157)) (EmptyCell!10459) )
))
(declare-datatypes ((array!59813 0))(
  ( (array!59814 (arr!28771 (Array (_ BitVec 32) ValueCell!10459)) (size!29251 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59813)

(declare-fun mapRest!34816 () (Array (_ BitVec 32) ValueCell!10459))

(declare-fun mapValue!34816 () ValueCell!10459)

(assert (=> mapNonEmpty!34816 (= (arr!28771 _values!1400) (store mapRest!34816 mapKey!34816 mapValue!34816))))

(declare-fun b!967894 () Bool)

(declare-fun res!648067 () Bool)

(assert (=> b!967894 (=> (not res!648067) (not e!545505))))

(declare-datatypes ((array!59815 0))(
  ( (array!59816 (arr!28772 (Array (_ BitVec 32) (_ BitVec 64))) (size!29252 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59815)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59815 (_ BitVec 32)) Bool)

(assert (=> b!967894 (= res!648067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967895 () Bool)

(declare-fun res!648070 () Bool)

(assert (=> b!967895 (=> (not res!648070) (not e!545505))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967895 (= res!648070 (validKeyInArray!0 (select (arr!28772 _keys!1686) i!803)))))

(declare-fun res!648068 () Bool)

(assert (=> start!82974 (=> (not res!648068) (not e!545505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82974 (= res!648068 (validMask!0 mask!2110))))

(assert (=> start!82974 e!545505))

(assert (=> start!82974 true))

(declare-fun e!545506 () Bool)

(declare-fun array_inv!22169 (array!59813) Bool)

(assert (=> start!82974 (and (array_inv!22169 _values!1400) e!545506)))

(declare-fun array_inv!22170 (array!59815) Bool)

(assert (=> start!82974 (array_inv!22170 _keys!1686)))

(assert (=> start!82974 tp!66348))

(declare-fun tp_is_empty!21881 () Bool)

(assert (=> start!82974 tp_is_empty!21881))

(declare-fun b!967896 () Bool)

(declare-fun res!648071 () Bool)

(assert (=> b!967896 (=> (not res!648071) (not e!545505))))

(declare-datatypes ((List!20101 0))(
  ( (Nil!20098) (Cons!20097 (h!21259 (_ BitVec 64)) (t!28472 List!20101)) )
))
(declare-fun arrayNoDuplicates!0 (array!59815 (_ BitVec 32) List!20101) Bool)

(assert (=> b!967896 (= res!648071 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20098))))

(declare-fun b!967897 () Bool)

(assert (=> b!967897 (= e!545505 (not (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29252 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001)) (bvslt (bvsub (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159) (bvsub from!2084 newFrom!159)))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!34157)

(declare-fun zeroValue!1342 () V!34157)

(declare-datatypes ((tuple2!14228 0))(
  ( (tuple2!14229 (_1!7124 (_ BitVec 64)) (_2!7124 V!34157)) )
))
(declare-datatypes ((List!20102 0))(
  ( (Nil!20099) (Cons!20098 (h!21260 tuple2!14228) (t!28473 List!20102)) )
))
(declare-datatypes ((ListLongMap!12939 0))(
  ( (ListLongMap!12940 (toList!6485 List!20102)) )
))
(declare-fun contains!5536 (ListLongMap!12939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3670 (array!59815 array!59813 (_ BitVec 32) (_ BitVec 32) V!34157 V!34157 (_ BitVec 32) Int) ListLongMap!12939)

(assert (=> b!967897 (contains!5536 (getCurrentListMap!3670 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28772 _keys!1686) i!803))))

(declare-datatypes ((Unit!32319 0))(
  ( (Unit!32320) )
))
(declare-fun lt!431421 () Unit!32319)

(declare-fun lemmaInListMapFromThenInFromMinusOne!66 (array!59815 array!59813 (_ BitVec 32) (_ BitVec 32) V!34157 V!34157 (_ BitVec 32) (_ BitVec 32) Int) Unit!32319)

(assert (=> b!967897 (= lt!431421 (lemmaInListMapFromThenInFromMinusOne!66 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967898 () Bool)

(declare-fun res!648064 () Bool)

(assert (=> b!967898 (=> (not res!648064) (not e!545505))))

(assert (=> b!967898 (= res!648064 (and (= (size!29251 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29252 _keys!1686) (size!29251 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967899 () Bool)

(declare-fun e!545509 () Bool)

(assert (=> b!967899 (= e!545506 (and e!545509 mapRes!34816))))

(declare-fun condMapEmpty!34816 () Bool)

(declare-fun mapDefault!34816 () ValueCell!10459)

