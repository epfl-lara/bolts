; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82904 () Bool)

(assert start!82904)

(declare-fun b_free!19003 () Bool)

(declare-fun b_next!19003 () Bool)

(assert (=> start!82904 (= b_free!19003 (not b_next!19003))))

(declare-fun tp!66139 () Bool)

(declare-fun b_and!30509 () Bool)

(assert (=> start!82904 (= tp!66139 b_and!30509)))

(declare-fun b!966738 () Bool)

(declare-fun res!647231 () Bool)

(declare-fun e!544980 () Bool)

(assert (=> b!966738 (=> (not res!647231) (not e!544980))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34065 0))(
  ( (V!34066 (val!10956 Int)) )
))
(declare-datatypes ((ValueCell!10424 0))(
  ( (ValueCellFull!10424 (v!13514 V!34065)) (EmptyCell!10424) )
))
(declare-datatypes ((array!59685 0))(
  ( (array!59686 (arr!28707 (Array (_ BitVec 32) ValueCell!10424)) (size!29187 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59685)

(declare-datatypes ((array!59687 0))(
  ( (array!59688 (arr!28708 (Array (_ BitVec 32) (_ BitVec 64))) (size!29188 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59687)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966738 (= res!647231 (and (= (size!29187 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29188 _keys!1686) (size!29187 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966739 () Bool)

(declare-fun res!647225 () Bool)

(assert (=> b!966739 (=> (not res!647225) (not e!544980))))

(declare-fun minValue!1342 () V!34065)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34065)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14180 0))(
  ( (tuple2!14181 (_1!7100 (_ BitVec 64)) (_2!7100 V!34065)) )
))
(declare-datatypes ((List!20055 0))(
  ( (Nil!20052) (Cons!20051 (h!21213 tuple2!14180) (t!28426 List!20055)) )
))
(declare-datatypes ((ListLongMap!12891 0))(
  ( (ListLongMap!12892 (toList!6461 List!20055)) )
))
(declare-fun contains!5512 (ListLongMap!12891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3646 (array!59687 array!59685 (_ BitVec 32) (_ BitVec 32) V!34065 V!34065 (_ BitVec 32) Int) ListLongMap!12891)

(assert (=> b!966739 (= res!647225 (contains!5512 (getCurrentListMap!3646 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28708 _keys!1686) i!803)))))

(declare-fun b!966740 () Bool)

(declare-fun res!647227 () Bool)

(assert (=> b!966740 (=> (not res!647227) (not e!544980))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966740 (= res!647227 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29188 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29188 _keys!1686))))))

(declare-fun b!966741 () Bool)

(declare-fun res!647226 () Bool)

(assert (=> b!966741 (=> (not res!647226) (not e!544980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966741 (= res!647226 (validKeyInArray!0 (select (arr!28708 _keys!1686) i!803)))))

(declare-fun b!966742 () Bool)

(declare-fun res!647230 () Bool)

(assert (=> b!966742 (=> (not res!647230) (not e!544980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59687 (_ BitVec 32)) Bool)

(assert (=> b!966742 (= res!647230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966743 () Bool)

(assert (=> b!966743 (= e!544980 (not true))))

(assert (=> b!966743 (contains!5512 (getCurrentListMap!3646 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28708 _keys!1686) i!803))))

(declare-datatypes ((Unit!32275 0))(
  ( (Unit!32276) )
))
(declare-fun lt!431316 () Unit!32275)

(declare-fun lemmaInListMapFromThenInFromMinusOne!44 (array!59687 array!59685 (_ BitVec 32) (_ BitVec 32) V!34065 V!34065 (_ BitVec 32) (_ BitVec 32) Int) Unit!32275)

(assert (=> b!966743 (= lt!431316 (lemmaInListMapFromThenInFromMinusOne!44 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966744 () Bool)

(declare-fun e!544982 () Bool)

(declare-fun e!544981 () Bool)

(declare-fun mapRes!34711 () Bool)

(assert (=> b!966744 (= e!544982 (and e!544981 mapRes!34711))))

(declare-fun condMapEmpty!34711 () Bool)

(declare-fun mapDefault!34711 () ValueCell!10424)

