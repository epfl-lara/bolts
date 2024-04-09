; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20416 () Bool)

(assert start!20416)

(declare-fun b_free!5063 () Bool)

(declare-fun b_next!5063 () Bool)

(assert (=> start!20416 (= b_free!5063 (not b_next!5063))))

(declare-fun tp!18221 () Bool)

(declare-fun b_and!11827 () Bool)

(assert (=> start!20416 (= tp!18221 b_and!11827)))

(declare-fun b!201718 () Bool)

(declare-fun res!96491 () Bool)

(declare-fun e!132191 () Bool)

(assert (=> b!201718 (=> (not res!96491) (not e!132191))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201718 (= res!96491 (validKeyInArray!0 k!843))))

(declare-fun b!201719 () Bool)

(declare-fun res!96492 () Bool)

(assert (=> b!201719 (=> (not res!96492) (not e!132191))))

(declare-datatypes ((array!9066 0))(
  ( (array!9067 (arr!4283 (Array (_ BitVec 32) (_ BitVec 64))) (size!4608 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9066)

(declare-datatypes ((List!2725 0))(
  ( (Nil!2722) (Cons!2721 (h!3363 (_ BitVec 64)) (t!7664 List!2725)) )
))
(declare-fun arrayNoDuplicates!0 (array!9066 (_ BitVec 32) List!2725) Bool)

(assert (=> b!201719 (= res!96492 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2722))))

(declare-fun b!201720 () Bool)

(declare-fun res!96494 () Bool)

(assert (=> b!201720 (=> (not res!96494) (not e!132191))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6205 0))(
  ( (V!6206 (val!2504 Int)) )
))
(declare-datatypes ((ValueCell!2116 0))(
  ( (ValueCellFull!2116 (v!4470 V!6205)) (EmptyCell!2116) )
))
(declare-datatypes ((array!9068 0))(
  ( (array!9069 (arr!4284 (Array (_ BitVec 32) ValueCell!2116)) (size!4609 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9068)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201720 (= res!96494 (and (= (size!4609 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4608 _keys!825) (size!4609 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201721 () Bool)

(declare-fun e!132196 () Bool)

(assert (=> b!201721 (= e!132196 true)))

(declare-datatypes ((tuple2!3790 0))(
  ( (tuple2!3791 (_1!1905 (_ BitVec 64)) (_2!1905 V!6205)) )
))
(declare-datatypes ((List!2726 0))(
  ( (Nil!2723) (Cons!2722 (h!3364 tuple2!3790) (t!7665 List!2726)) )
))
(declare-datatypes ((ListLongMap!2717 0))(
  ( (ListLongMap!2718 (toList!1374 List!2726)) )
))
(declare-fun lt!100833 () ListLongMap!2717)

(declare-fun lt!100837 () tuple2!3790)

(declare-fun lt!100823 () ListLongMap!2717)

(declare-fun lt!100826 () tuple2!3790)

(declare-fun +!391 (ListLongMap!2717 tuple2!3790) ListLongMap!2717)

(assert (=> b!201721 (= (+!391 lt!100833 lt!100826) (+!391 lt!100823 lt!100837))))

(declare-fun minValue!615 () V!6205)

(declare-fun lt!100824 () ListLongMap!2717)

(declare-datatypes ((Unit!6089 0))(
  ( (Unit!6090) )
))
(declare-fun lt!100835 () Unit!6089)

(declare-fun v!520 () V!6205)

(declare-fun addCommutativeForDiffKeys!112 (ListLongMap!2717 (_ BitVec 64) V!6205 (_ BitVec 64) V!6205) Unit!6089)

(assert (=> b!201721 (= lt!100835 (addCommutativeForDiffKeys!112 lt!100824 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201722 () Bool)

(declare-fun res!96493 () Bool)

(assert (=> b!201722 (=> (not res!96493) (not e!132191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9066 (_ BitVec 32)) Bool)

(assert (=> b!201722 (= res!96493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8447 () Bool)

(declare-fun mapRes!8447 () Bool)

(declare-fun tp!18220 () Bool)

(declare-fun e!132192 () Bool)

(assert (=> mapNonEmpty!8447 (= mapRes!8447 (and tp!18220 e!132192))))

(declare-fun mapKey!8447 () (_ BitVec 32))

(declare-fun mapValue!8447 () ValueCell!2116)

(declare-fun mapRest!8447 () (Array (_ BitVec 32) ValueCell!2116))

(assert (=> mapNonEmpty!8447 (= (arr!4284 _values!649) (store mapRest!8447 mapKey!8447 mapValue!8447))))

(declare-fun b!201723 () Bool)

(declare-fun e!132193 () Bool)

(declare-fun tp_is_empty!4919 () Bool)

(assert (=> b!201723 (= e!132193 tp_is_empty!4919)))

(declare-fun b!201724 () Bool)

(declare-fun e!132194 () Bool)

(assert (=> b!201724 (= e!132194 (and e!132193 mapRes!8447))))

(declare-fun condMapEmpty!8447 () Bool)

(declare-fun mapDefault!8447 () ValueCell!2116)

