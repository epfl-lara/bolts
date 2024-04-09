; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35974 () Bool)

(assert start!35974)

(declare-fun b!361137 () Bool)

(declare-fun res!200964 () Bool)

(declare-fun e!221153 () Bool)

(assert (=> b!361137 (=> (not res!200964) (not e!221153))))

(declare-datatypes ((array!20267 0))(
  ( (array!20268 (arr!9619 (Array (_ BitVec 32) (_ BitVec 64))) (size!9971 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20267)

(assert (=> b!361137 (= res!200964 (and (bvsle #b00000000000000000000000000000000 (size!9971 _keys!1541)) (bvslt (size!9971 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!14079 () Bool)

(declare-fun mapRes!14079 () Bool)

(assert (=> mapIsEmpty!14079 mapRes!14079))

(declare-fun b!361138 () Bool)

(declare-fun e!221154 () Bool)

(assert (=> b!361138 (= e!221153 e!221154)))

(declare-fun res!200962 () Bool)

(assert (=> b!361138 (=> res!200962 e!221154)))

(declare-datatypes ((List!5530 0))(
  ( (Nil!5527) (Cons!5526 (h!6382 (_ BitVec 64)) (t!10688 List!5530)) )
))
(declare-fun contains!2426 (List!5530 (_ BitVec 64)) Bool)

(assert (=> b!361138 (= res!200962 (contains!2426 Nil!5527 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!361139 () Bool)

(declare-fun e!221152 () Bool)

(declare-fun tp_is_empty!8371 () Bool)

(assert (=> b!361139 (= e!221152 tp_is_empty!8371)))

(declare-fun res!200961 () Bool)

(assert (=> start!35974 (=> (not res!200961) (not e!221153))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35974 (= res!200961 (validMask!0 mask!1943))))

(assert (=> start!35974 e!221153))

(assert (=> start!35974 true))

(declare-datatypes ((V!12139 0))(
  ( (V!12140 (val!4230 Int)) )
))
(declare-datatypes ((ValueCell!3842 0))(
  ( (ValueCellFull!3842 (v!6420 V!12139)) (EmptyCell!3842) )
))
(declare-datatypes ((array!20269 0))(
  ( (array!20270 (arr!9620 (Array (_ BitVec 32) ValueCell!3842)) (size!9972 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20269)

(declare-fun e!221155 () Bool)

(declare-fun array_inv!7072 (array!20269) Bool)

(assert (=> start!35974 (and (array_inv!7072 _values!1277) e!221155)))

(declare-fun array_inv!7073 (array!20267) Bool)

(assert (=> start!35974 (array_inv!7073 _keys!1541)))

(declare-fun b!361140 () Bool)

(declare-fun e!221151 () Bool)

(assert (=> b!361140 (= e!221151 tp_is_empty!8371)))

(declare-fun b!361141 () Bool)

(declare-fun res!200960 () Bool)

(assert (=> b!361141 (=> (not res!200960) (not e!221153))))

(declare-fun noDuplicate!182 (List!5530) Bool)

(assert (=> b!361141 (= res!200960 (noDuplicate!182 Nil!5527))))

(declare-fun mapNonEmpty!14079 () Bool)

(declare-fun tp!28155 () Bool)

(assert (=> mapNonEmpty!14079 (= mapRes!14079 (and tp!28155 e!221151))))

(declare-fun mapValue!14079 () ValueCell!3842)

(declare-fun mapRest!14079 () (Array (_ BitVec 32) ValueCell!3842))

(declare-fun mapKey!14079 () (_ BitVec 32))

(assert (=> mapNonEmpty!14079 (= (arr!9620 _values!1277) (store mapRest!14079 mapKey!14079 mapValue!14079))))

(declare-fun b!361142 () Bool)

(assert (=> b!361142 (= e!221155 (and e!221152 mapRes!14079))))

(declare-fun condMapEmpty!14079 () Bool)

(declare-fun mapDefault!14079 () ValueCell!3842)

