; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82670 () Bool)

(assert start!82670)

(declare-fun b_free!18775 () Bool)

(declare-fun b_next!18775 () Bool)

(assert (=> start!82670 (= b_free!18775 (not b_next!18775))))

(declare-fun tp!65445 () Bool)

(declare-fun b_and!30281 () Bool)

(assert (=> start!82670 (= tp!65445 b_and!30281)))

(declare-fun b!963210 () Bool)

(declare-fun res!644753 () Bool)

(declare-fun e!543146 () Bool)

(assert (=> b!963210 (=> (not res!644753) (not e!543146))))

(declare-datatypes ((array!59231 0))(
  ( (array!59232 (arr!28480 (Array (_ BitVec 32) (_ BitVec 64))) (size!28960 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59231)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59231 (_ BitVec 32)) Bool)

(assert (=> b!963210 (= res!644753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963211 () Bool)

(declare-fun res!644752 () Bool)

(assert (=> b!963211 (=> (not res!644752) (not e!543146))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33753 0))(
  ( (V!33754 (val!10839 Int)) )
))
(declare-datatypes ((ValueCell!10307 0))(
  ( (ValueCellFull!10307 (v!13397 V!33753)) (EmptyCell!10307) )
))
(declare-datatypes ((array!59233 0))(
  ( (array!59234 (arr!28481 (Array (_ BitVec 32) ValueCell!10307)) (size!28961 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59233)

(declare-fun minValue!1342 () V!33753)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33753)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((tuple2!14006 0))(
  ( (tuple2!14007 (_1!7013 (_ BitVec 64)) (_2!7013 V!33753)) )
))
(declare-datatypes ((List!19888 0))(
  ( (Nil!19885) (Cons!19884 (h!21046 tuple2!14006) (t!28259 List!19888)) )
))
(declare-datatypes ((ListLongMap!12717 0))(
  ( (ListLongMap!12718 (toList!6374 List!19888)) )
))
(declare-fun contains!5428 (ListLongMap!12717 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3559 (array!59231 array!59233 (_ BitVec 32) (_ BitVec 32) V!33753 V!33753 (_ BitVec 32) Int) ListLongMap!12717)

(assert (=> b!963211 (= res!644752 (contains!5428 (getCurrentListMap!3559 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28480 _keys!1686) i!803)))))

(declare-fun b!963212 () Bool)

(declare-fun e!543145 () Bool)

(declare-fun tp_is_empty!21577 () Bool)

(assert (=> b!963212 (= e!543145 tp_is_empty!21577)))

(declare-fun b!963213 () Bool)

(declare-fun e!543147 () Bool)

(assert (=> b!963213 (= e!543147 tp_is_empty!21577)))

(declare-fun res!644749 () Bool)

(assert (=> start!82670 (=> (not res!644749) (not e!543146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82670 (= res!644749 (validMask!0 mask!2110))))

(assert (=> start!82670 e!543146))

(assert (=> start!82670 true))

(declare-fun e!543148 () Bool)

(declare-fun array_inv!21985 (array!59233) Bool)

(assert (=> start!82670 (and (array_inv!21985 _values!1400) e!543148)))

(declare-fun array_inv!21986 (array!59231) Bool)

(assert (=> start!82670 (array_inv!21986 _keys!1686)))

(assert (=> start!82670 tp!65445))

(assert (=> start!82670 tp_is_empty!21577))

(declare-fun b!963214 () Bool)

(declare-fun res!644750 () Bool)

(assert (=> b!963214 (=> (not res!644750) (not e!543146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963214 (= res!644750 (validKeyInArray!0 (select (arr!28480 _keys!1686) i!803)))))

(declare-fun b!963215 () Bool)

(assert (=> b!963215 (= e!543146 (not true))))

(assert (=> b!963215 (contains!5428 (getCurrentListMap!3559 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28480 _keys!1686) i!803))))

(declare-datatypes ((Unit!32209 0))(
  ( (Unit!32210) )
))
(declare-fun lt!430911 () Unit!32209)

(declare-fun lemmaInListMapFromThenInFromMinusOne!13 (array!59231 array!59233 (_ BitVec 32) (_ BitVec 32) V!33753 V!33753 (_ BitVec 32) (_ BitVec 32) Int) Unit!32209)

(assert (=> b!963215 (= lt!430911 (lemmaInListMapFromThenInFromMinusOne!13 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapNonEmpty!34360 () Bool)

(declare-fun mapRes!34360 () Bool)

(declare-fun tp!65446 () Bool)

(assert (=> mapNonEmpty!34360 (= mapRes!34360 (and tp!65446 e!543147))))

(declare-fun mapValue!34360 () ValueCell!10307)

(declare-fun mapRest!34360 () (Array (_ BitVec 32) ValueCell!10307))

(declare-fun mapKey!34360 () (_ BitVec 32))

(assert (=> mapNonEmpty!34360 (= (arr!28481 _values!1400) (store mapRest!34360 mapKey!34360 mapValue!34360))))

(declare-fun b!963216 () Bool)

(declare-fun res!644754 () Bool)

(assert (=> b!963216 (=> (not res!644754) (not e!543146))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963216 (= res!644754 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28960 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28960 _keys!1686))))))

(declare-fun b!963217 () Bool)

(declare-fun res!644751 () Bool)

(assert (=> b!963217 (=> (not res!644751) (not e!543146))))

(assert (=> b!963217 (= res!644751 (and (= (size!28961 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28960 _keys!1686) (size!28961 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963218 () Bool)

(declare-fun res!644756 () Bool)

(assert (=> b!963218 (=> (not res!644756) (not e!543146))))

(assert (=> b!963218 (= res!644756 (bvsgt from!2084 newFrom!159))))

(declare-fun mapIsEmpty!34360 () Bool)

(assert (=> mapIsEmpty!34360 mapRes!34360))

(declare-fun b!963219 () Bool)

(declare-fun res!644755 () Bool)

(assert (=> b!963219 (=> (not res!644755) (not e!543146))))

(declare-datatypes ((List!19889 0))(
  ( (Nil!19886) (Cons!19885 (h!21047 (_ BitVec 64)) (t!28260 List!19889)) )
))
(declare-fun arrayNoDuplicates!0 (array!59231 (_ BitVec 32) List!19889) Bool)

(assert (=> b!963219 (= res!644755 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19886))))

(declare-fun b!963220 () Bool)

(assert (=> b!963220 (= e!543148 (and e!543145 mapRes!34360))))

(declare-fun condMapEmpty!34360 () Bool)

(declare-fun mapDefault!34360 () ValueCell!10307)

