; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35716 () Bool)

(assert start!35716)

(declare-fun b!358458 () Bool)

(declare-fun e!219474 () Bool)

(declare-fun tp_is_empty!8161 () Bool)

(assert (=> b!358458 (= e!219474 tp_is_empty!8161)))

(declare-fun b!358459 () Bool)

(declare-fun e!219476 () Bool)

(assert (=> b!358459 (= e!219476 tp_is_empty!8161)))

(declare-fun res!199295 () Bool)

(declare-fun e!219475 () Bool)

(assert (=> start!35716 (=> (not res!199295) (not e!219475))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35716 (= res!199295 (validMask!0 mask!1842))))

(assert (=> start!35716 e!219475))

(assert (=> start!35716 true))

(declare-datatypes ((V!11859 0))(
  ( (V!11860 (val!4125 Int)) )
))
(declare-datatypes ((ValueCell!3737 0))(
  ( (ValueCellFull!3737 (v!6315 V!11859)) (EmptyCell!3737) )
))
(declare-datatypes ((array!19849 0))(
  ( (array!19850 (arr!9415 (Array (_ BitVec 32) ValueCell!3737)) (size!9767 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19849)

(declare-fun e!219472 () Bool)

(declare-fun array_inv!6922 (array!19849) Bool)

(assert (=> start!35716 (and (array_inv!6922 _values!1208) e!219472)))

(declare-datatypes ((array!19851 0))(
  ( (array!19852 (arr!9416 (Array (_ BitVec 32) (_ BitVec 64))) (size!9768 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19851)

(declare-fun array_inv!6923 (array!19851) Bool)

(assert (=> start!35716 (array_inv!6923 _keys!1456)))

(declare-fun mapIsEmpty!13749 () Bool)

(declare-fun mapRes!13749 () Bool)

(assert (=> mapIsEmpty!13749 mapRes!13749))

(declare-fun b!358460 () Bool)

(assert (=> b!358460 (= e!219475 false)))

(declare-fun lt!166189 () Bool)

(declare-datatypes ((List!5460 0))(
  ( (Nil!5457) (Cons!5456 (h!6312 (_ BitVec 64)) (t!10618 List!5460)) )
))
(declare-fun arrayNoDuplicates!0 (array!19851 (_ BitVec 32) List!5460) Bool)

(assert (=> b!358460 (= lt!166189 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5457))))

(declare-fun b!358461 () Bool)

(assert (=> b!358461 (= e!219472 (and e!219476 mapRes!13749))))

(declare-fun condMapEmpty!13749 () Bool)

(declare-fun mapDefault!13749 () ValueCell!3737)

