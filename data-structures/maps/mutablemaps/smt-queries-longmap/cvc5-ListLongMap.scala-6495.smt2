; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82838 () Bool)

(assert start!82838)

(declare-fun b_free!18937 () Bool)

(declare-fun b_next!18937 () Bool)

(assert (=> start!82838 (= b_free!18937 (not b_next!18937))))

(declare-fun tp!65941 () Bool)

(declare-fun b_and!30443 () Bool)

(assert (=> start!82838 (= tp!65941 b_and!30443)))

(declare-fun b!965816 () Bool)

(declare-fun res!646603 () Bool)

(declare-fun e!544488 () Bool)

(assert (=> b!965816 (=> (not res!646603) (not e!544488))))

(declare-datatypes ((array!59555 0))(
  ( (array!59556 (arr!28642 (Array (_ BitVec 32) (_ BitVec 64))) (size!29122 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59555)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965816 (= res!646603 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29122 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29122 _keys!1686))))))

(declare-fun b!965817 () Bool)

(declare-fun e!544486 () Bool)

(declare-fun tp_is_empty!21745 () Bool)

(assert (=> b!965817 (= e!544486 tp_is_empty!21745)))

(declare-fun b!965819 () Bool)

(declare-fun e!544489 () Bool)

(assert (=> b!965819 (= e!544489 tp_is_empty!21745)))

(declare-fun b!965820 () Bool)

(assert (=> b!965820 (= e!544488 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431226 () Bool)

(declare-datatypes ((V!33977 0))(
  ( (V!33978 (val!10923 Int)) )
))
(declare-datatypes ((ValueCell!10391 0))(
  ( (ValueCellFull!10391 (v!13481 V!33977)) (EmptyCell!10391) )
))
(declare-datatypes ((array!59557 0))(
  ( (array!59558 (arr!28643 (Array (_ BitVec 32) ValueCell!10391)) (size!29123 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59557)

(declare-fun minValue!1342 () V!33977)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33977)

(declare-datatypes ((tuple2!14126 0))(
  ( (tuple2!14127 (_1!7073 (_ BitVec 64)) (_2!7073 V!33977)) )
))
(declare-datatypes ((List!20004 0))(
  ( (Nil!20001) (Cons!20000 (h!21162 tuple2!14126) (t!28375 List!20004)) )
))
(declare-datatypes ((ListLongMap!12837 0))(
  ( (ListLongMap!12838 (toList!6434 List!20004)) )
))
(declare-fun contains!5485 (ListLongMap!12837 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3619 (array!59555 array!59557 (_ BitVec 32) (_ BitVec 32) V!33977 V!33977 (_ BitVec 32) Int) ListLongMap!12837)

(assert (=> b!965820 (= lt!431226 (contains!5485 (getCurrentListMap!3619 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28642 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34612 () Bool)

(declare-fun mapRes!34612 () Bool)

(declare-fun tp!65940 () Bool)

(assert (=> mapNonEmpty!34612 (= mapRes!34612 (and tp!65940 e!544486))))

(declare-fun mapValue!34612 () ValueCell!10391)

(declare-fun mapKey!34612 () (_ BitVec 32))

(declare-fun mapRest!34612 () (Array (_ BitVec 32) ValueCell!10391))

(assert (=> mapNonEmpty!34612 (= (arr!28643 _values!1400) (store mapRest!34612 mapKey!34612 mapValue!34612))))

(declare-fun b!965821 () Bool)

(declare-fun res!646602 () Bool)

(assert (=> b!965821 (=> (not res!646602) (not e!544488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59555 (_ BitVec 32)) Bool)

(assert (=> b!965821 (= res!646602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965822 () Bool)

(declare-fun res!646600 () Bool)

(assert (=> b!965822 (=> (not res!646600) (not e!544488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965822 (= res!646600 (validKeyInArray!0 (select (arr!28642 _keys!1686) i!803)))))

(declare-fun b!965823 () Bool)

(declare-fun e!544487 () Bool)

(assert (=> b!965823 (= e!544487 (and e!544489 mapRes!34612))))

(declare-fun condMapEmpty!34612 () Bool)

(declare-fun mapDefault!34612 () ValueCell!10391)

