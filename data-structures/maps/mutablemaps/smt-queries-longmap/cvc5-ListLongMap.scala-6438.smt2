; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82466 () Bool)

(assert start!82466)

(declare-fun b!960924 () Bool)

(declare-fun e!541768 () Bool)

(declare-fun tp_is_empty!21403 () Bool)

(assert (=> b!960924 (= e!541768 tp_is_empty!21403)))

(declare-fun mapNonEmpty!34090 () Bool)

(declare-fun mapRes!34090 () Bool)

(declare-fun tp!65020 () Bool)

(assert (=> mapNonEmpty!34090 (= mapRes!34090 (and tp!65020 e!541768))))

(declare-fun mapKey!34090 () (_ BitVec 32))

(declare-datatypes ((V!33521 0))(
  ( (V!33522 (val!10752 Int)) )
))
(declare-datatypes ((ValueCell!10220 0))(
  ( (ValueCellFull!10220 (v!13309 V!33521)) (EmptyCell!10220) )
))
(declare-fun mapValue!34090 () ValueCell!10220)

(declare-datatypes ((array!58903 0))(
  ( (array!58904 (arr!28319 (Array (_ BitVec 32) ValueCell!10220)) (size!28799 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58903)

(declare-fun mapRest!34090 () (Array (_ BitVec 32) ValueCell!10220))

(assert (=> mapNonEmpty!34090 (= (arr!28319 _values!1400) (store mapRest!34090 mapKey!34090 mapValue!34090))))

(declare-fun b!960925 () Bool)

(declare-fun res!643290 () Bool)

(declare-fun e!541765 () Bool)

(assert (=> b!960925 (=> (not res!643290) (not e!541765))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!58905 0))(
  ( (array!58906 (arr!28320 (Array (_ BitVec 32) (_ BitVec 64))) (size!28800 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58905)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!960925 (= res!643290 (and (= (size!28799 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28800 _keys!1686) (size!28799 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34090 () Bool)

(assert (=> mapIsEmpty!34090 mapRes!34090))

(declare-fun b!960926 () Bool)

(declare-fun res!643288 () Bool)

(assert (=> b!960926 (=> (not res!643288) (not e!541765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58905 (_ BitVec 32)) Bool)

(assert (=> b!960926 (= res!643288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!960927 () Bool)

(declare-fun e!541769 () Bool)

(declare-fun e!541767 () Bool)

(assert (=> b!960927 (= e!541769 (and e!541767 mapRes!34090))))

(declare-fun condMapEmpty!34090 () Bool)

(declare-fun mapDefault!34090 () ValueCell!10220)

