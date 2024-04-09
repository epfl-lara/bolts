; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34484 () Bool)

(assert start!34484)

(declare-fun b_free!7399 () Bool)

(declare-fun b_next!7399 () Bool)

(assert (=> start!34484 (= b_free!7399 (not b_next!7399))))

(declare-fun tp!25742 () Bool)

(declare-fun b_and!14625 () Bool)

(assert (=> start!34484 (= tp!25742 b_and!14625)))

(declare-fun b!344231 () Bool)

(declare-fun e!211036 () Bool)

(declare-fun tp_is_empty!7351 () Bool)

(assert (=> b!344231 (= e!211036 tp_is_empty!7351)))

(declare-fun b!344232 () Bool)

(declare-fun res!190442 () Bool)

(declare-fun e!211034 () Bool)

(assert (=> b!344232 (=> (not res!190442) (not e!211034))))

(declare-datatypes ((array!18259 0))(
  ( (array!18260 (arr!8643 (Array (_ BitVec 32) (_ BitVec 64))) (size!8995 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18259)

(declare-datatypes ((List!5019 0))(
  ( (Nil!5016) (Cons!5015 (h!5871 (_ BitVec 64)) (t!10143 List!5019)) )
))
(declare-fun arrayNoDuplicates!0 (array!18259 (_ BitVec 32) List!5019) Bool)

(assert (=> b!344232 (= res!190442 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5016))))

(declare-fun res!190437 () Bool)

(assert (=> start!34484 (=> (not res!190437) (not e!211034))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34484 (= res!190437 (validMask!0 mask!2385))))

(assert (=> start!34484 e!211034))

(assert (=> start!34484 true))

(assert (=> start!34484 tp_is_empty!7351))

(assert (=> start!34484 tp!25742))

(declare-datatypes ((V!10779 0))(
  ( (V!10780 (val!3720 Int)) )
))
(declare-datatypes ((ValueCell!3332 0))(
  ( (ValueCellFull!3332 (v!5892 V!10779)) (EmptyCell!3332) )
))
(declare-datatypes ((array!18261 0))(
  ( (array!18262 (arr!8644 (Array (_ BitVec 32) ValueCell!3332)) (size!8996 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18261)

(declare-fun e!211035 () Bool)

(declare-fun array_inv!6394 (array!18261) Bool)

(assert (=> start!34484 (and (array_inv!6394 _values!1525) e!211035)))

(declare-fun array_inv!6395 (array!18259) Bool)

(assert (=> start!34484 (array_inv!6395 _keys!1895)))

(declare-fun b!344233 () Bool)

(declare-fun e!211037 () Bool)

(assert (=> b!344233 (= e!211037 tp_is_empty!7351)))

(declare-fun b!344234 () Bool)

(declare-fun res!190439 () Bool)

(assert (=> b!344234 (=> (not res!190439) (not e!211034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18259 (_ BitVec 32)) Bool)

(assert (=> b!344234 (= res!190439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344235 () Bool)

(declare-fun res!190441 () Bool)

(assert (=> b!344235 (=> (not res!190441) (not e!211034))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10779)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10779)

(declare-datatypes ((tuple2!5374 0))(
  ( (tuple2!5375 (_1!2697 (_ BitVec 64)) (_2!2697 V!10779)) )
))
(declare-datatypes ((List!5020 0))(
  ( (Nil!5017) (Cons!5016 (h!5872 tuple2!5374) (t!10144 List!5020)) )
))
(declare-datatypes ((ListLongMap!4301 0))(
  ( (ListLongMap!4302 (toList!2166 List!5020)) )
))
(declare-fun contains!2220 (ListLongMap!4301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1686 (array!18259 array!18261 (_ BitVec 32) (_ BitVec 32) V!10779 V!10779 (_ BitVec 32) Int) ListLongMap!4301)

(assert (=> b!344235 (= res!190441 (not (contains!2220 (getCurrentListMap!1686 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12465 () Bool)

(declare-fun mapRes!12465 () Bool)

(assert (=> mapIsEmpty!12465 mapRes!12465))

(declare-fun b!344236 () Bool)

(assert (=> b!344236 (= e!211035 (and e!211037 mapRes!12465))))

(declare-fun condMapEmpty!12465 () Bool)

(declare-fun mapDefault!12465 () ValueCell!3332)

