; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82796 () Bool)

(assert start!82796)

(declare-fun b_free!18901 () Bool)

(declare-fun b_next!18901 () Bool)

(assert (=> start!82796 (= b_free!18901 (not b_next!18901))))

(declare-fun tp!65824 () Bool)

(declare-fun b_and!30407 () Bool)

(assert (=> start!82796 (= tp!65824 b_and!30407)))

(declare-fun b!965258 () Bool)

(declare-fun res!646230 () Bool)

(declare-fun e!544174 () Bool)

(assert (=> b!965258 (=> (not res!646230) (not e!544174))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33921 0))(
  ( (V!33922 (val!10902 Int)) )
))
(declare-datatypes ((ValueCell!10370 0))(
  ( (ValueCellFull!10370 (v!13460 V!33921)) (EmptyCell!10370) )
))
(declare-datatypes ((array!59471 0))(
  ( (array!59472 (arr!28600 (Array (_ BitVec 32) ValueCell!10370)) (size!29080 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59471)

(declare-datatypes ((array!59473 0))(
  ( (array!59474 (arr!28601 (Array (_ BitVec 32) (_ BitVec 64))) (size!29081 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59473)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965258 (= res!646230 (and (= (size!29080 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29081 _keys!1686) (size!29080 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34549 () Bool)

(declare-fun mapRes!34549 () Bool)

(assert (=> mapIsEmpty!34549 mapRes!34549))

(declare-fun b!965259 () Bool)

(declare-fun e!544172 () Bool)

(declare-fun tp_is_empty!21703 () Bool)

(assert (=> b!965259 (= e!544172 tp_is_empty!21703)))

(declare-fun b!965260 () Bool)

(declare-fun res!646231 () Bool)

(assert (=> b!965260 (=> (not res!646231) (not e!544174))))

(declare-datatypes ((List!19972 0))(
  ( (Nil!19969) (Cons!19968 (h!21130 (_ BitVec 64)) (t!28343 List!19972)) )
))
(declare-fun arrayNoDuplicates!0 (array!59473 (_ BitVec 32) List!19972) Bool)

(assert (=> b!965260 (= res!646231 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19969))))

(declare-fun b!965261 () Bool)

(assert (=> b!965261 (= e!544174 false)))

(declare-fun minValue!1342 () V!33921)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun lt!431181 () Bool)

(declare-fun zeroValue!1342 () V!33921)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14094 0))(
  ( (tuple2!14095 (_1!7057 (_ BitVec 64)) (_2!7057 V!33921)) )
))
(declare-datatypes ((List!19973 0))(
  ( (Nil!19970) (Cons!19969 (h!21131 tuple2!14094) (t!28344 List!19973)) )
))
(declare-datatypes ((ListLongMap!12805 0))(
  ( (ListLongMap!12806 (toList!6418 List!19973)) )
))
(declare-fun contains!5472 (ListLongMap!12805 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3603 (array!59473 array!59471 (_ BitVec 32) (_ BitVec 32) V!33921 V!33921 (_ BitVec 32) Int) ListLongMap!12805)

(assert (=> b!965261 (= lt!431181 (contains!5472 (getCurrentListMap!3603 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28601 _keys!1686) i!803)))))

(declare-fun b!965262 () Bool)

(declare-fun e!544171 () Bool)

(assert (=> b!965262 (= e!544171 tp_is_empty!21703)))

(declare-fun b!965263 () Bool)

(declare-fun res!646233 () Bool)

(assert (=> b!965263 (=> (not res!646233) (not e!544174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59473 (_ BitVec 32)) Bool)

(assert (=> b!965263 (= res!646233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!646232 () Bool)

(assert (=> start!82796 (=> (not res!646232) (not e!544174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82796 (= res!646232 (validMask!0 mask!2110))))

(assert (=> start!82796 e!544174))

(assert (=> start!82796 true))

(declare-fun e!544173 () Bool)

(declare-fun array_inv!22055 (array!59471) Bool)

(assert (=> start!82796 (and (array_inv!22055 _values!1400) e!544173)))

(declare-fun array_inv!22056 (array!59473) Bool)

(assert (=> start!82796 (array_inv!22056 _keys!1686)))

(assert (=> start!82796 tp!65824))

(assert (=> start!82796 tp_is_empty!21703))

(declare-fun b!965264 () Bool)

(assert (=> b!965264 (= e!544173 (and e!544171 mapRes!34549))))

(declare-fun condMapEmpty!34549 () Bool)

(declare-fun mapDefault!34549 () ValueCell!10370)

