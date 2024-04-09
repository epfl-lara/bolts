; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41142 () Bool)

(assert start!41142)

(declare-fun b_free!11003 () Bool)

(declare-fun b_next!11003 () Bool)

(assert (=> start!41142 (= b_free!11003 (not b_next!11003))))

(declare-fun tp!38845 () Bool)

(declare-fun b_and!19263 () Bool)

(assert (=> start!41142 (= tp!38845 b_and!19263)))

(declare-fun b!458735 () Bool)

(declare-fun res!274162 () Bool)

(declare-fun e!267814 () Bool)

(assert (=> b!458735 (=> (not res!274162) (not e!267814))))

(declare-datatypes ((array!28449 0))(
  ( (array!28450 (arr!13662 (Array (_ BitVec 32) (_ BitVec 64))) (size!14014 (_ BitVec 32))) )
))
(declare-fun lt!207567 () array!28449)

(declare-datatypes ((List!8259 0))(
  ( (Nil!8256) (Cons!8255 (h!9111 (_ BitVec 64)) (t!14149 List!8259)) )
))
(declare-fun arrayNoDuplicates!0 (array!28449 (_ BitVec 32) List!8259) Bool)

(assert (=> b!458735 (= res!274162 (arrayNoDuplicates!0 lt!207567 #b00000000000000000000000000000000 Nil!8256))))

(declare-fun b!458736 () Bool)

(declare-fun res!274169 () Bool)

(declare-fun e!267812 () Bool)

(assert (=> b!458736 (=> (not res!274169) (not e!267812))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458736 (= res!274169 (validMask!0 mask!1025))))

(declare-fun b!458737 () Bool)

(assert (=> b!458737 (= e!267812 e!267814)))

(declare-fun res!274165 () Bool)

(assert (=> b!458737 (=> (not res!274165) (not e!267814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28449 (_ BitVec 32)) Bool)

(assert (=> b!458737 (= res!274165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207567 mask!1025))))

(declare-fun _keys!709 () array!28449)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458737 (= lt!207567 (array!28450 (store (arr!13662 _keys!709) i!563 k!794) (size!14014 _keys!709)))))

(declare-fun res!274160 () Bool)

(assert (=> start!41142 (=> (not res!274160) (not e!267812))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!41142 (= res!274160 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14014 _keys!709))))))

(assert (=> start!41142 e!267812))

(declare-fun tp_is_empty!12341 () Bool)

(assert (=> start!41142 tp_is_empty!12341))

(assert (=> start!41142 tp!38845))

(assert (=> start!41142 true))

(declare-datatypes ((V!17559 0))(
  ( (V!17560 (val!6215 Int)) )
))
(declare-datatypes ((ValueCell!5827 0))(
  ( (ValueCellFull!5827 (v!8489 V!17559)) (EmptyCell!5827) )
))
(declare-datatypes ((array!28451 0))(
  ( (array!28452 (arr!13663 (Array (_ BitVec 32) ValueCell!5827)) (size!14015 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28451)

(declare-fun e!267811 () Bool)

(declare-fun array_inv!9882 (array!28451) Bool)

(assert (=> start!41142 (and (array_inv!9882 _values!549) e!267811)))

(declare-fun array_inv!9883 (array!28449) Bool)

(assert (=> start!41142 (array_inv!9883 _keys!709)))

(declare-fun b!458738 () Bool)

(declare-fun res!274167 () Bool)

(assert (=> b!458738 (=> (not res!274167) (not e!267812))))

(declare-fun arrayContainsKey!0 (array!28449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458738 (= res!274167 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!458739 () Bool)

(declare-fun e!267810 () Bool)

(assert (=> b!458739 (= e!267810 true)))

(assert (=> b!458739 false))

(declare-datatypes ((Unit!13267 0))(
  ( (Unit!13268) )
))
(declare-fun lt!207566 () Unit!13267)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13267)

(assert (=> b!458739 (= lt!207566 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(declare-fun b!458740 () Bool)

(declare-fun e!267815 () Bool)

(assert (=> b!458740 (= e!267815 tp_is_empty!12341)))

(declare-fun mapNonEmpty!20161 () Bool)

(declare-fun mapRes!20161 () Bool)

(declare-fun tp!38844 () Bool)

(assert (=> mapNonEmpty!20161 (= mapRes!20161 (and tp!38844 e!267815))))

(declare-fun mapValue!20161 () ValueCell!5827)

(declare-fun mapRest!20161 () (Array (_ BitVec 32) ValueCell!5827))

(declare-fun mapKey!20161 () (_ BitVec 32))

(assert (=> mapNonEmpty!20161 (= (arr!13663 _values!549) (store mapRest!20161 mapKey!20161 mapValue!20161))))

(declare-fun b!458741 () Bool)

(declare-fun res!274158 () Bool)

(assert (=> b!458741 (=> (not res!274158) (not e!267812))))

(assert (=> b!458741 (= res!274158 (or (= (select (arr!13662 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13662 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458742 () Bool)

(declare-fun res!274171 () Bool)

(assert (=> b!458742 (=> (not res!274171) (not e!267812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458742 (= res!274171 (validKeyInArray!0 k!794))))

(declare-fun b!458743 () Bool)

(declare-fun e!267816 () Bool)

(assert (=> b!458743 (= e!267811 (and e!267816 mapRes!20161))))

(declare-fun condMapEmpty!20161 () Bool)

(declare-fun mapDefault!20161 () ValueCell!5827)

