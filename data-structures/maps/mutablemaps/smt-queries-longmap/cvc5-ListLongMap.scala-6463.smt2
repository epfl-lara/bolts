; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82646 () Bool)

(assert start!82646)

(declare-fun b_free!18751 () Bool)

(declare-fun b_next!18751 () Bool)

(assert (=> start!82646 (= b_free!18751 (not b_next!18751))))

(declare-fun tp!65374 () Bool)

(declare-fun b_and!30257 () Bool)

(assert (=> start!82646 (= tp!65374 b_and!30257)))

(declare-fun b!962814 () Bool)

(declare-fun res!644466 () Bool)

(declare-fun e!542968 () Bool)

(assert (=> b!962814 (=> (not res!644466) (not e!542968))))

(declare-datatypes ((array!59183 0))(
  ( (array!59184 (arr!28456 (Array (_ BitVec 32) (_ BitVec 64))) (size!28936 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59183)

(declare-datatypes ((List!19871 0))(
  ( (Nil!19868) (Cons!19867 (h!21029 (_ BitVec 64)) (t!28242 List!19871)) )
))
(declare-fun arrayNoDuplicates!0 (array!59183 (_ BitVec 32) List!19871) Bool)

(assert (=> b!962814 (= res!644466 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19868))))

(declare-fun res!644463 () Bool)

(assert (=> start!82646 (=> (not res!644463) (not e!542968))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82646 (= res!644463 (validMask!0 mask!2110))))

(assert (=> start!82646 e!542968))

(assert (=> start!82646 true))

(declare-datatypes ((V!33721 0))(
  ( (V!33722 (val!10827 Int)) )
))
(declare-datatypes ((ValueCell!10295 0))(
  ( (ValueCellFull!10295 (v!13385 V!33721)) (EmptyCell!10295) )
))
(declare-datatypes ((array!59185 0))(
  ( (array!59186 (arr!28457 (Array (_ BitVec 32) ValueCell!10295)) (size!28937 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59185)

(declare-fun e!542964 () Bool)

(declare-fun array_inv!21971 (array!59185) Bool)

(assert (=> start!82646 (and (array_inv!21971 _values!1400) e!542964)))

(declare-fun array_inv!21972 (array!59183) Bool)

(assert (=> start!82646 (array_inv!21972 _keys!1686)))

(assert (=> start!82646 tp!65374))

(declare-fun tp_is_empty!21553 () Bool)

(assert (=> start!82646 tp_is_empty!21553))

(declare-fun b!962815 () Bool)

(declare-fun res!644464 () Bool)

(assert (=> b!962815 (=> (not res!644464) (not e!542968))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962815 (= res!644464 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28936 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28936 _keys!1686))))))

(declare-fun b!962816 () Bool)

(declare-fun res!644462 () Bool)

(assert (=> b!962816 (=> (not res!644462) (not e!542968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59183 (_ BitVec 32)) Bool)

(assert (=> b!962816 (= res!644462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962817 () Bool)

(declare-fun res!644461 () Bool)

(assert (=> b!962817 (=> (not res!644461) (not e!542968))))

(declare-fun minValue!1342 () V!33721)

(declare-fun defaultEntry!1403 () Int)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33721)

(declare-datatypes ((tuple2!13988 0))(
  ( (tuple2!13989 (_1!7004 (_ BitVec 64)) (_2!7004 V!33721)) )
))
(declare-datatypes ((List!19872 0))(
  ( (Nil!19869) (Cons!19868 (h!21030 tuple2!13988) (t!28243 List!19872)) )
))
(declare-datatypes ((ListLongMap!12699 0))(
  ( (ListLongMap!12700 (toList!6365 List!19872)) )
))
(declare-fun contains!5419 (ListLongMap!12699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3550 (array!59183 array!59185 (_ BitVec 32) (_ BitVec 32) V!33721 V!33721 (_ BitVec 32) Int) ListLongMap!12699)

(assert (=> b!962817 (= res!644461 (contains!5419 (getCurrentListMap!3550 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28456 _keys!1686) i!803)))))

(declare-fun b!962818 () Bool)

(declare-fun e!542965 () Bool)

(declare-fun mapRes!34324 () Bool)

(assert (=> b!962818 (= e!542964 (and e!542965 mapRes!34324))))

(declare-fun condMapEmpty!34324 () Bool)

(declare-fun mapDefault!34324 () ValueCell!10295)

