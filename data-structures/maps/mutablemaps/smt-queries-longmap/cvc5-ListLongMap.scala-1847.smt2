; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33458 () Bool)

(assert start!33458)

(declare-fun b!331834 () Bool)

(declare-fun e!203699 () Bool)

(declare-fun tp_is_empty!6703 () Bool)

(assert (=> b!331834 (= e!203699 tp_is_empty!6703)))

(declare-fun mapNonEmpty!11439 () Bool)

(declare-fun mapRes!11439 () Bool)

(declare-fun tp!23814 () Bool)

(assert (=> mapNonEmpty!11439 (= mapRes!11439 (and tp!23814 e!203699))))

(declare-datatypes ((V!9915 0))(
  ( (V!9916 (val!3396 Int)) )
))
(declare-datatypes ((ValueCell!3008 0))(
  ( (ValueCellFull!3008 (v!5551 V!9915)) (EmptyCell!3008) )
))
(declare-fun mapRest!11439 () (Array (_ BitVec 32) ValueCell!3008))

(declare-fun mapValue!11439 () ValueCell!3008)

(declare-fun mapKey!11439 () (_ BitVec 32))

(declare-datatypes ((array!17003 0))(
  ( (array!17004 (arr!8033 (Array (_ BitVec 32) ValueCell!3008)) (size!8385 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17003)

(assert (=> mapNonEmpty!11439 (= (arr!8033 _values!1525) (store mapRest!11439 mapKey!11439 mapValue!11439))))

(declare-fun res!182886 () Bool)

(declare-fun e!203698 () Bool)

(assert (=> start!33458 (=> (not res!182886) (not e!203698))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33458 (= res!182886 (validMask!0 mask!2385))))

(assert (=> start!33458 e!203698))

(assert (=> start!33458 true))

(declare-fun e!203697 () Bool)

(declare-fun array_inv!5972 (array!17003) Bool)

(assert (=> start!33458 (and (array_inv!5972 _values!1525) e!203697)))

(declare-datatypes ((array!17005 0))(
  ( (array!17006 (arr!8034 (Array (_ BitVec 32) (_ BitVec 64))) (size!8386 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17005)

(declare-fun array_inv!5973 (array!17005) Bool)

(assert (=> start!33458 (array_inv!5973 _keys!1895)))

(declare-fun b!331835 () Bool)

(assert (=> b!331835 (= e!203698 false)))

(declare-fun lt!158910 () Bool)

(declare-datatypes ((List!4602 0))(
  ( (Nil!4599) (Cons!4598 (h!5454 (_ BitVec 64)) (t!9692 List!4602)) )
))
(declare-fun arrayNoDuplicates!0 (array!17005 (_ BitVec 32) List!4602) Bool)

(assert (=> b!331835 (= lt!158910 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4599))))

(declare-fun mapIsEmpty!11439 () Bool)

(assert (=> mapIsEmpty!11439 mapRes!11439))

(declare-fun b!331836 () Bool)

(declare-fun e!203696 () Bool)

(assert (=> b!331836 (= e!203696 tp_is_empty!6703)))

(declare-fun b!331837 () Bool)

(declare-fun res!182887 () Bool)

(assert (=> b!331837 (=> (not res!182887) (not e!203698))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331837 (= res!182887 (and (= (size!8385 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8386 _keys!1895) (size!8385 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!331838 () Bool)

(declare-fun res!182888 () Bool)

(assert (=> b!331838 (=> (not res!182888) (not e!203698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17005 (_ BitVec 32)) Bool)

(assert (=> b!331838 (= res!182888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331839 () Bool)

(assert (=> b!331839 (= e!203697 (and e!203696 mapRes!11439))))

(declare-fun condMapEmpty!11439 () Bool)

(declare-fun mapDefault!11439 () ValueCell!3008)

