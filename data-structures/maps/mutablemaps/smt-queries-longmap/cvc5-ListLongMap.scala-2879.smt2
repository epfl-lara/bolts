; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41402 () Bool)

(assert start!41402)

(declare-fun mapIsEmpty!20437 () Bool)

(declare-fun mapRes!20437 () Bool)

(assert (=> mapIsEmpty!20437 mapRes!20437))

(declare-fun b!462423 () Bool)

(declare-fun e!269886 () Bool)

(declare-fun tp_is_empty!12511 () Bool)

(assert (=> b!462423 (= e!269886 tp_is_empty!12511)))

(declare-fun mapNonEmpty!20437 () Bool)

(declare-fun tp!39256 () Bool)

(assert (=> mapNonEmpty!20437 (= mapRes!20437 (and tp!39256 e!269886))))

(declare-datatypes ((V!17787 0))(
  ( (V!17788 (val!6300 Int)) )
))
(declare-datatypes ((ValueCell!5912 0))(
  ( (ValueCellFull!5912 (v!8583 V!17787)) (EmptyCell!5912) )
))
(declare-datatypes ((array!28789 0))(
  ( (array!28790 (arr!13825 (Array (_ BitVec 32) ValueCell!5912)) (size!14177 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28789)

(declare-fun mapKey!20437 () (_ BitVec 32))

(declare-fun mapRest!20437 () (Array (_ BitVec 32) ValueCell!5912))

(declare-fun mapValue!20437 () ValueCell!5912)

(assert (=> mapNonEmpty!20437 (= (arr!13825 _values!833) (store mapRest!20437 mapKey!20437 mapValue!20437))))

(declare-fun b!462424 () Bool)

(declare-fun e!269887 () Bool)

(assert (=> b!462424 (= e!269887 tp_is_empty!12511)))

(declare-fun b!462425 () Bool)

(declare-fun e!269888 () Bool)

(assert (=> b!462425 (= e!269888 false)))

(declare-fun lt!209202 () Bool)

(declare-datatypes ((array!28791 0))(
  ( (array!28792 (arr!13826 (Array (_ BitVec 32) (_ BitVec 64))) (size!14178 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28791)

(declare-datatypes ((List!8354 0))(
  ( (Nil!8351) (Cons!8350 (h!9206 (_ BitVec 64)) (t!14306 List!8354)) )
))
(declare-fun arrayNoDuplicates!0 (array!28791 (_ BitVec 32) List!8354) Bool)

(assert (=> b!462425 (= lt!209202 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8351))))

(declare-fun b!462426 () Bool)

(declare-fun res!276611 () Bool)

(assert (=> b!462426 (=> (not res!276611) (not e!269888))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462426 (= res!276611 (and (= (size!14177 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14178 _keys!1025) (size!14177 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462427 () Bool)

(declare-fun e!269889 () Bool)

(assert (=> b!462427 (= e!269889 (and e!269887 mapRes!20437))))

(declare-fun condMapEmpty!20437 () Bool)

(declare-fun mapDefault!20437 () ValueCell!5912)

