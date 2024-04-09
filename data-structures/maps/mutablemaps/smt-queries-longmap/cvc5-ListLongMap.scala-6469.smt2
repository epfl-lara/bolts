; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82682 () Bool)

(assert start!82682)

(declare-fun b_free!18787 () Bool)

(declare-fun b_next!18787 () Bool)

(assert (=> start!82682 (= b_free!18787 (not b_next!18787))))

(declare-fun tp!65481 () Bool)

(declare-fun b_and!30293 () Bool)

(assert (=> start!82682 (= tp!65481 b_and!30293)))

(declare-fun res!644899 () Bool)

(declare-fun e!543237 () Bool)

(assert (=> start!82682 (=> (not res!644899) (not e!543237))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82682 (= res!644899 (validMask!0 mask!2110))))

(assert (=> start!82682 e!543237))

(assert (=> start!82682 true))

(declare-datatypes ((V!33769 0))(
  ( (V!33770 (val!10845 Int)) )
))
(declare-datatypes ((ValueCell!10313 0))(
  ( (ValueCellFull!10313 (v!13403 V!33769)) (EmptyCell!10313) )
))
(declare-datatypes ((array!59253 0))(
  ( (array!59254 (arr!28491 (Array (_ BitVec 32) ValueCell!10313)) (size!28971 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59253)

(declare-fun e!543236 () Bool)

(declare-fun array_inv!21991 (array!59253) Bool)

(assert (=> start!82682 (and (array_inv!21991 _values!1400) e!543236)))

(declare-datatypes ((array!59255 0))(
  ( (array!59256 (arr!28492 (Array (_ BitVec 32) (_ BitVec 64))) (size!28972 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59255)

(declare-fun array_inv!21992 (array!59255) Bool)

(assert (=> start!82682 (array_inv!21992 _keys!1686)))

(assert (=> start!82682 tp!65481))

(declare-fun tp_is_empty!21589 () Bool)

(assert (=> start!82682 tp_is_empty!21589))

(declare-fun b!963408 () Bool)

(declare-fun res!644894 () Bool)

(assert (=> b!963408 (=> (not res!644894) (not e!543237))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!963408 (= res!644894 (and (= (size!28971 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28972 _keys!1686) (size!28971 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963409 () Bool)

(declare-fun res!644896 () Bool)

(assert (=> b!963409 (=> (not res!644896) (not e!543237))))

(declare-datatypes ((List!19896 0))(
  ( (Nil!19893) (Cons!19892 (h!21054 (_ BitVec 64)) (t!28267 List!19896)) )
))
(declare-fun arrayNoDuplicates!0 (array!59255 (_ BitVec 32) List!19896) Bool)

(assert (=> b!963409 (= res!644896 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19893))))

(declare-fun mapIsEmpty!34378 () Bool)

(declare-fun mapRes!34378 () Bool)

(assert (=> mapIsEmpty!34378 mapRes!34378))

(declare-fun b!963410 () Bool)

(declare-fun res!644900 () Bool)

(assert (=> b!963410 (=> (not res!644900) (not e!543237))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963410 (= res!644900 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963411 () Bool)

(declare-fun res!644895 () Bool)

(assert (=> b!963411 (=> (not res!644895) (not e!543237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59255 (_ BitVec 32)) Bool)

(assert (=> b!963411 (= res!644895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963412 () Bool)

(assert (=> b!963412 (= e!543237 (not true))))

(declare-fun minValue!1342 () V!33769)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33769)

(declare-datatypes ((tuple2!14014 0))(
  ( (tuple2!14015 (_1!7017 (_ BitVec 64)) (_2!7017 V!33769)) )
))
(declare-datatypes ((List!19897 0))(
  ( (Nil!19894) (Cons!19893 (h!21055 tuple2!14014) (t!28268 List!19897)) )
))
(declare-datatypes ((ListLongMap!12725 0))(
  ( (ListLongMap!12726 (toList!6378 List!19897)) )
))
(declare-fun contains!5432 (ListLongMap!12725 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3563 (array!59255 array!59253 (_ BitVec 32) (_ BitVec 32) V!33769 V!33769 (_ BitVec 32) Int) ListLongMap!12725)

(assert (=> b!963412 (contains!5432 (getCurrentListMap!3563 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28492 _keys!1686) i!803))))

(declare-datatypes ((Unit!32215 0))(
  ( (Unit!32216) )
))
(declare-fun lt!430929 () Unit!32215)

(declare-fun lemmaInListMapFromThenInFromMinusOne!16 (array!59255 array!59253 (_ BitVec 32) (_ BitVec 32) V!33769 V!33769 (_ BitVec 32) (_ BitVec 32) Int) Unit!32215)

(assert (=> b!963412 (= lt!430929 (lemmaInListMapFromThenInFromMinusOne!16 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963413 () Bool)

(declare-fun e!543234 () Bool)

(assert (=> b!963413 (= e!543236 (and e!543234 mapRes!34378))))

(declare-fun condMapEmpty!34378 () Bool)

(declare-fun mapDefault!34378 () ValueCell!10313)

