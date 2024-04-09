; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35996 () Bool)

(assert start!35996)

(declare-fun mapNonEmpty!14097 () Bool)

(declare-fun mapRes!14097 () Bool)

(declare-fun tp!28173 () Bool)

(declare-fun e!221261 () Bool)

(assert (=> mapNonEmpty!14097 (= mapRes!14097 (and tp!28173 e!221261))))

(declare-datatypes ((V!12151 0))(
  ( (V!12152 (val!4235 Int)) )
))
(declare-datatypes ((ValueCell!3847 0))(
  ( (ValueCellFull!3847 (v!6426 V!12151)) (EmptyCell!3847) )
))
(declare-datatypes ((array!20289 0))(
  ( (array!20290 (arr!9629 (Array (_ BitVec 32) ValueCell!3847)) (size!9981 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20289)

(declare-fun mapValue!14097 () ValueCell!3847)

(declare-fun mapRest!14097 () (Array (_ BitVec 32) ValueCell!3847))

(declare-fun mapKey!14097 () (_ BitVec 32))

(assert (=> mapNonEmpty!14097 (= (arr!9629 _values!1277) (store mapRest!14097 mapKey!14097 mapValue!14097))))

(declare-fun b!361282 () Bool)

(declare-fun e!221262 () Bool)

(declare-fun tp_is_empty!8381 () Bool)

(assert (=> b!361282 (= e!221262 tp_is_empty!8381)))

(declare-fun b!361283 () Bool)

(declare-fun res!201045 () Bool)

(declare-fun e!221263 () Bool)

(assert (=> b!361283 (=> (not res!201045) (not e!221263))))

(declare-datatypes ((array!20291 0))(
  ( (array!20292 (arr!9630 (Array (_ BitVec 32) (_ BitVec 64))) (size!9982 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20291)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20291 (_ BitVec 32)) Bool)

(assert (=> b!361283 (= res!201045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun res!201047 () Bool)

(assert (=> start!35996 (=> (not res!201047) (not e!221263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35996 (= res!201047 (validMask!0 mask!1943))))

(assert (=> start!35996 e!221263))

(assert (=> start!35996 true))

(declare-fun e!221264 () Bool)

(declare-fun array_inv!7082 (array!20289) Bool)

(assert (=> start!35996 (and (array_inv!7082 _values!1277) e!221264)))

(declare-fun array_inv!7083 (array!20291) Bool)

(assert (=> start!35996 (array_inv!7083 _keys!1541)))

(declare-fun b!361284 () Bool)

(assert (=> b!361284 (= e!221263 false)))

(declare-fun lt!166526 () Bool)

(declare-datatypes ((List!5534 0))(
  ( (Nil!5531) (Cons!5530 (h!6386 (_ BitVec 64)) (t!10692 List!5534)) )
))
(declare-fun arrayNoDuplicates!0 (array!20291 (_ BitVec 32) List!5534) Bool)

(assert (=> b!361284 (= lt!166526 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5531))))

(declare-fun b!361285 () Bool)

(assert (=> b!361285 (= e!221264 (and e!221262 mapRes!14097))))

(declare-fun condMapEmpty!14097 () Bool)

(declare-fun mapDefault!14097 () ValueCell!3847)

