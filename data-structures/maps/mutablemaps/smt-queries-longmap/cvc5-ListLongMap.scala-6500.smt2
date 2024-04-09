; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82868 () Bool)

(assert start!82868)

(declare-fun b_free!18967 () Bool)

(declare-fun b_next!18967 () Bool)

(assert (=> start!82868 (= b_free!18967 (not b_next!18967))))

(declare-fun tp!66030 () Bool)

(declare-fun b_and!30473 () Bool)

(assert (=> start!82868 (= tp!66030 b_and!30473)))

(declare-fun b!966221 () Bool)

(declare-fun res!646873 () Bool)

(declare-fun e!544712 () Bool)

(assert (=> b!966221 (=> (not res!646873) (not e!544712))))

(declare-datatypes ((array!59613 0))(
  ( (array!59614 (arr!28671 (Array (_ BitVec 32) (_ BitVec 64))) (size!29151 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59613)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59613 (_ BitVec 32)) Bool)

(assert (=> b!966221 (= res!646873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966222 () Bool)

(declare-fun e!544710 () Bool)

(declare-fun tp_is_empty!21775 () Bool)

(assert (=> b!966222 (= e!544710 tp_is_empty!21775)))

(declare-fun b!966223 () Bool)

(declare-fun res!646871 () Bool)

(assert (=> b!966223 (=> (not res!646871) (not e!544712))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!966223 (= res!646871 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29151 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29151 _keys!1686))))))

(declare-fun b!966225 () Bool)

(declare-fun e!544713 () Bool)

(assert (=> b!966225 (= e!544713 tp_is_empty!21775)))

(declare-fun b!966226 () Bool)

(assert (=> b!966226 (= e!544712 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34017 0))(
  ( (V!34018 (val!10938 Int)) )
))
(declare-datatypes ((ValueCell!10406 0))(
  ( (ValueCellFull!10406 (v!13496 V!34017)) (EmptyCell!10406) )
))
(declare-datatypes ((array!59615 0))(
  ( (array!59616 (arr!28672 (Array (_ BitVec 32) ValueCell!10406)) (size!29152 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59615)

(declare-fun minValue!1342 () V!34017)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431271 () Bool)

(declare-fun zeroValue!1342 () V!34017)

(declare-datatypes ((tuple2!14150 0))(
  ( (tuple2!14151 (_1!7085 (_ BitVec 64)) (_2!7085 V!34017)) )
))
(declare-datatypes ((List!20026 0))(
  ( (Nil!20023) (Cons!20022 (h!21184 tuple2!14150) (t!28397 List!20026)) )
))
(declare-datatypes ((ListLongMap!12861 0))(
  ( (ListLongMap!12862 (toList!6446 List!20026)) )
))
(declare-fun contains!5497 (ListLongMap!12861 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3631 (array!59613 array!59615 (_ BitVec 32) (_ BitVec 32) V!34017 V!34017 (_ BitVec 32) Int) ListLongMap!12861)

(assert (=> b!966226 (= lt!431271 (contains!5497 (getCurrentListMap!3631 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28671 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34657 () Bool)

(declare-fun mapRes!34657 () Bool)

(assert (=> mapIsEmpty!34657 mapRes!34657))

(declare-fun b!966224 () Bool)

(declare-fun e!544714 () Bool)

(assert (=> b!966224 (= e!544714 (and e!544710 mapRes!34657))))

(declare-fun condMapEmpty!34657 () Bool)

(declare-fun mapDefault!34657 () ValueCell!10406)

