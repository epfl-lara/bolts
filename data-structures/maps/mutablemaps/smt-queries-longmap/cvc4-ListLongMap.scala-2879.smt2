; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41406 () Bool)

(assert start!41406)

(declare-fun b!462458 () Bool)

(declare-fun e!269918 () Bool)

(assert (=> b!462458 (= e!269918 false)))

(declare-fun lt!209208 () Bool)

(declare-datatypes ((array!28797 0))(
  ( (array!28798 (arr!13829 (Array (_ BitVec 32) (_ BitVec 64))) (size!14181 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28797)

(declare-datatypes ((List!8356 0))(
  ( (Nil!8353) (Cons!8352 (h!9208 (_ BitVec 64)) (t!14308 List!8356)) )
))
(declare-fun arrayNoDuplicates!0 (array!28797 (_ BitVec 32) List!8356) Bool)

(assert (=> b!462458 (= lt!209208 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8353))))

(declare-fun b!462459 () Bool)

(declare-fun res!276627 () Bool)

(assert (=> b!462459 (=> (not res!276627) (not e!269918))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17791 0))(
  ( (V!17792 (val!6302 Int)) )
))
(declare-datatypes ((ValueCell!5914 0))(
  ( (ValueCellFull!5914 (v!8585 V!17791)) (EmptyCell!5914) )
))
(declare-datatypes ((array!28799 0))(
  ( (array!28800 (arr!13830 (Array (_ BitVec 32) ValueCell!5914)) (size!14182 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28799)

(assert (=> b!462459 (= res!276627 (and (= (size!14182 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14181 _keys!1025) (size!14182 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20443 () Bool)

(declare-fun mapRes!20443 () Bool)

(declare-fun tp!39262 () Bool)

(declare-fun e!269919 () Bool)

(assert (=> mapNonEmpty!20443 (= mapRes!20443 (and tp!39262 e!269919))))

(declare-fun mapRest!20443 () (Array (_ BitVec 32) ValueCell!5914))

(declare-fun mapValue!20443 () ValueCell!5914)

(declare-fun mapKey!20443 () (_ BitVec 32))

(assert (=> mapNonEmpty!20443 (= (arr!13830 _values!833) (store mapRest!20443 mapKey!20443 mapValue!20443))))

(declare-fun mapIsEmpty!20443 () Bool)

(assert (=> mapIsEmpty!20443 mapRes!20443))

(declare-fun b!462460 () Bool)

(declare-fun tp_is_empty!12515 () Bool)

(assert (=> b!462460 (= e!269919 tp_is_empty!12515)))

(declare-fun res!276628 () Bool)

(assert (=> start!41406 (=> (not res!276628) (not e!269918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41406 (= res!276628 (validMask!0 mask!1365))))

(assert (=> start!41406 e!269918))

(assert (=> start!41406 true))

(declare-fun array_inv!9982 (array!28797) Bool)

(assert (=> start!41406 (array_inv!9982 _keys!1025)))

(declare-fun e!269917 () Bool)

(declare-fun array_inv!9983 (array!28799) Bool)

(assert (=> start!41406 (and (array_inv!9983 _values!833) e!269917)))

(declare-fun b!462461 () Bool)

(declare-fun res!276629 () Bool)

(assert (=> b!462461 (=> (not res!276629) (not e!269918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28797 (_ BitVec 32)) Bool)

(assert (=> b!462461 (= res!276629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462462 () Bool)

(declare-fun e!269920 () Bool)

(assert (=> b!462462 (= e!269920 tp_is_empty!12515)))

(declare-fun b!462463 () Bool)

(assert (=> b!462463 (= e!269917 (and e!269920 mapRes!20443))))

(declare-fun condMapEmpty!20443 () Bool)

(declare-fun mapDefault!20443 () ValueCell!5914)

