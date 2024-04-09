; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3708 () Bool)

(assert start!3708)

(declare-fun b!25967 () Bool)

(declare-fun res!15431 () Bool)

(declare-fun e!16846 () Bool)

(assert (=> b!25967 (=> (not res!15431) (not e!16846))))

(declare-datatypes ((array!1355 0))(
  ( (array!1356 (arr!638 (Array (_ BitVec 32) (_ BitVec 64))) (size!739 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1355)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1355 (_ BitVec 32)) Bool)

(assert (=> b!25967 (= res!15431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!25968 () Bool)

(declare-fun e!16843 () Bool)

(declare-fun tp_is_empty!1061 () Bool)

(assert (=> b!25968 (= e!16843 tp_is_empty!1061)))

(declare-fun b!25969 () Bool)

(declare-fun res!15429 () Bool)

(assert (=> b!25969 (=> (not res!15429) (not e!16846))))

(declare-datatypes ((V!1239 0))(
  ( (V!1240 (val!557 Int)) )
))
(declare-datatypes ((ValueCell!331 0))(
  ( (ValueCellFull!331 (v!1642 V!1239)) (EmptyCell!331) )
))
(declare-datatypes ((array!1357 0))(
  ( (array!1358 (arr!639 (Array (_ BitVec 32) ValueCell!331)) (size!740 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1357)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!25969 (= res!15429 (and (= (size!740 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!739 _keys!1833) (size!740 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!25970 () Bool)

(declare-fun e!16844 () Bool)

(declare-fun e!16847 () Bool)

(declare-fun mapRes!1099 () Bool)

(assert (=> b!25970 (= e!16844 (and e!16847 mapRes!1099))))

(declare-fun condMapEmpty!1099 () Bool)

(declare-fun mapDefault!1099 () ValueCell!331)

