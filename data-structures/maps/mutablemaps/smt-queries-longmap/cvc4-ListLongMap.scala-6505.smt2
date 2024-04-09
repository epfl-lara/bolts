; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82902 () Bool)

(assert start!82902)

(declare-fun b_free!19001 () Bool)

(declare-fun b_next!19001 () Bool)

(assert (=> start!82902 (= b_free!19001 (not b_next!19001))))

(declare-fun tp!66133 () Bool)

(declare-fun b_and!30507 () Bool)

(assert (=> start!82902 (= tp!66133 b_and!30507)))

(declare-fun mapIsEmpty!34708 () Bool)

(declare-fun mapRes!34708 () Bool)

(assert (=> mapIsEmpty!34708 mapRes!34708))

(declare-fun b!966705 () Bool)

(declare-fun e!544969 () Bool)

(declare-fun tp_is_empty!21809 () Bool)

(assert (=> b!966705 (= e!544969 tp_is_empty!21809)))

(declare-fun b!966706 () Bool)

(declare-fun res!647202 () Bool)

(declare-fun e!544968 () Bool)

(assert (=> b!966706 (=> (not res!647202) (not e!544968))))

(declare-datatypes ((array!59681 0))(
  ( (array!59682 (arr!28705 (Array (_ BitVec 32) (_ BitVec 64))) (size!29185 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59681)

(declare-datatypes ((List!20053 0))(
  ( (Nil!20050) (Cons!20049 (h!21211 (_ BitVec 64)) (t!28424 List!20053)) )
))
(declare-fun arrayNoDuplicates!0 (array!59681 (_ BitVec 32) List!20053) Bool)

(assert (=> b!966706 (= res!647202 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20050))))

(declare-fun b!966707 () Bool)

(declare-fun res!647206 () Bool)

(assert (=> b!966707 (=> (not res!647206) (not e!544968))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34061 0))(
  ( (V!34062 (val!10955 Int)) )
))
(declare-datatypes ((ValueCell!10423 0))(
  ( (ValueCellFull!10423 (v!13513 V!34061)) (EmptyCell!10423) )
))
(declare-datatypes ((array!59683 0))(
  ( (array!59684 (arr!28706 (Array (_ BitVec 32) ValueCell!10423)) (size!29186 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59683)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966707 (= res!647206 (and (= (size!29186 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29185 _keys!1686) (size!29186 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966709 () Bool)

(declare-fun res!647207 () Bool)

(assert (=> b!966709 (=> (not res!647207) (not e!544968))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966709 (= res!647207 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29185 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29185 _keys!1686))))))

(declare-fun mapNonEmpty!34708 () Bool)

(declare-fun tp!66132 () Bool)

(declare-fun e!544965 () Bool)

(assert (=> mapNonEmpty!34708 (= mapRes!34708 (and tp!66132 e!544965))))

(declare-fun mapValue!34708 () ValueCell!10423)

(declare-fun mapRest!34708 () (Array (_ BitVec 32) ValueCell!10423))

(declare-fun mapKey!34708 () (_ BitVec 32))

(assert (=> mapNonEmpty!34708 (= (arr!28706 _values!1400) (store mapRest!34708 mapKey!34708 mapValue!34708))))

(declare-fun b!966710 () Bool)

(declare-fun res!647200 () Bool)

(assert (=> b!966710 (=> (not res!647200) (not e!544968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966710 (= res!647200 (validKeyInArray!0 (select (arr!28705 _keys!1686) i!803)))))

(declare-fun b!966711 () Bool)

(declare-fun res!647205 () Bool)

(assert (=> b!966711 (=> (not res!647205) (not e!544968))))

(declare-fun minValue!1342 () V!34061)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34061)

(declare-datatypes ((tuple2!14178 0))(
  ( (tuple2!14179 (_1!7099 (_ BitVec 64)) (_2!7099 V!34061)) )
))
(declare-datatypes ((List!20054 0))(
  ( (Nil!20051) (Cons!20050 (h!21212 tuple2!14178) (t!28425 List!20054)) )
))
(declare-datatypes ((ListLongMap!12889 0))(
  ( (ListLongMap!12890 (toList!6460 List!20054)) )
))
(declare-fun contains!5511 (ListLongMap!12889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3645 (array!59681 array!59683 (_ BitVec 32) (_ BitVec 32) V!34061 V!34061 (_ BitVec 32) Int) ListLongMap!12889)

(assert (=> b!966711 (= res!647205 (contains!5511 (getCurrentListMap!3645 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28705 _keys!1686) i!803)))))

(declare-fun b!966712 () Bool)

(declare-fun res!647203 () Bool)

(assert (=> b!966712 (=> (not res!647203) (not e!544968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59681 (_ BitVec 32)) Bool)

(assert (=> b!966712 (= res!647203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966713 () Bool)

(assert (=> b!966713 (= e!544968 (not true))))

(assert (=> b!966713 (contains!5511 (getCurrentListMap!3645 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28705 _keys!1686) i!803))))

(declare-datatypes ((Unit!32273 0))(
  ( (Unit!32274) )
))
(declare-fun lt!431313 () Unit!32273)

(declare-fun lemmaInListMapFromThenInFromMinusOne!43 (array!59681 array!59683 (_ BitVec 32) (_ BitVec 32) V!34061 V!34061 (_ BitVec 32) (_ BitVec 32) Int) Unit!32273)

(assert (=> b!966713 (= lt!431313 (lemmaInListMapFromThenInFromMinusOne!43 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966714 () Bool)

(declare-fun e!544966 () Bool)

(assert (=> b!966714 (= e!544966 (and e!544969 mapRes!34708))))

(declare-fun condMapEmpty!34708 () Bool)

(declare-fun mapDefault!34708 () ValueCell!10423)

