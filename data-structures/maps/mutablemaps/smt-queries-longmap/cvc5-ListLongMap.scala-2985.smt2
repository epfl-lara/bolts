; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42208 () Bool)

(assert start!42208)

(declare-fun b_free!11719 () Bool)

(declare-fun b_next!11719 () Bool)

(assert (=> start!42208 (= b_free!11719 (not b_next!11719))))

(declare-fun tp!41181 () Bool)

(declare-fun b_and!20167 () Bool)

(assert (=> start!42208 (= tp!41181 b_and!20167)))

(declare-fun b!470820 () Bool)

(declare-fun res!281365 () Bool)

(declare-fun e!275895 () Bool)

(assert (=> b!470820 (=> (not res!281365) (not e!275895))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30023 0))(
  ( (array!30024 (arr!14431 (Array (_ BitVec 32) (_ BitVec 64))) (size!14783 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30023)

(declare-datatypes ((V!18635 0))(
  ( (V!18636 (val!6618 Int)) )
))
(declare-datatypes ((ValueCell!6230 0))(
  ( (ValueCellFull!6230 (v!8905 V!18635)) (EmptyCell!6230) )
))
(declare-datatypes ((array!30025 0))(
  ( (array!30026 (arr!14432 (Array (_ BitVec 32) ValueCell!6230)) (size!14784 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30025)

(assert (=> b!470820 (= res!281365 (and (= (size!14784 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14783 _keys!1025) (size!14784 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470821 () Bool)

(assert (=> b!470821 (= e!275895 (not true))))

(declare-datatypes ((tuple2!8684 0))(
  ( (tuple2!8685 (_1!4352 (_ BitVec 64)) (_2!4352 V!18635)) )
))
(declare-datatypes ((List!8807 0))(
  ( (Nil!8804) (Cons!8803 (h!9659 tuple2!8684) (t!14779 List!8807)) )
))
(declare-datatypes ((ListLongMap!7611 0))(
  ( (ListLongMap!7612 (toList!3821 List!8807)) )
))
(declare-fun lt!213667 () ListLongMap!7611)

(declare-fun lt!213666 () ListLongMap!7611)

(assert (=> b!470821 (= lt!213667 lt!213666)))

(declare-fun minValueBefore!38 () V!18635)

(declare-fun zeroValue!794 () V!18635)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13768 0))(
  ( (Unit!13769) )
))
(declare-fun lt!213668 () Unit!13768)

(declare-fun minValueAfter!38 () V!18635)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!178 (array!30023 array!30025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18635 V!18635 V!18635 V!18635 (_ BitVec 32) Int) Unit!13768)

(assert (=> b!470821 (= lt!213668 (lemmaNoChangeToArrayThenSameMapNoExtras!178 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1983 (array!30023 array!30025 (_ BitVec 32) (_ BitVec 32) V!18635 V!18635 (_ BitVec 32) Int) ListLongMap!7611)

(assert (=> b!470821 (= lt!213666 (getCurrentListMapNoExtraKeys!1983 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470821 (= lt!213667 (getCurrentListMapNoExtraKeys!1983 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470822 () Bool)

(declare-fun e!275898 () Bool)

(declare-fun e!275896 () Bool)

(declare-fun mapRes!21424 () Bool)

(assert (=> b!470822 (= e!275898 (and e!275896 mapRes!21424))))

(declare-fun condMapEmpty!21424 () Bool)

(declare-fun mapDefault!21424 () ValueCell!6230)

