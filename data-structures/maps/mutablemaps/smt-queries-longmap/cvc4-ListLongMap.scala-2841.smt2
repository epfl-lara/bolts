; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41022 () Bool)

(assert start!41022)

(declare-fun b_free!10949 () Bool)

(declare-fun b_next!10949 () Bool)

(assert (=> start!41022 (= b_free!10949 (not b_next!10949))))

(declare-fun tp!38673 () Bool)

(declare-fun b_and!19109 () Bool)

(assert (=> start!41022 (= tp!38673 b_and!19109)))

(declare-fun res!272830 () Bool)

(declare-fun e!266862 () Bool)

(assert (=> start!41022 (=> (not res!272830) (not e!266862))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28341 0))(
  ( (array!28342 (arr!13611 (Array (_ BitVec 32) (_ BitVec 64))) (size!13963 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28341)

(assert (=> start!41022 (= res!272830 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13963 _keys!709))))))

(assert (=> start!41022 e!266862))

(declare-fun tp_is_empty!12287 () Bool)

(assert (=> start!41022 tp_is_empty!12287))

(assert (=> start!41022 tp!38673))

(assert (=> start!41022 true))

(declare-datatypes ((V!17487 0))(
  ( (V!17488 (val!6188 Int)) )
))
(declare-datatypes ((ValueCell!5800 0))(
  ( (ValueCellFull!5800 (v!8450 V!17487)) (EmptyCell!5800) )
))
(declare-datatypes ((array!28343 0))(
  ( (array!28344 (arr!13612 (Array (_ BitVec 32) ValueCell!5800)) (size!13964 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28343)

(declare-fun e!266863 () Bool)

(declare-fun array_inv!9848 (array!28343) Bool)

(assert (=> start!41022 (and (array_inv!9848 _values!549) e!266863)))

(declare-fun array_inv!9849 (array!28341) Bool)

(assert (=> start!41022 (array_inv!9849 _keys!709)))

(declare-fun b!456852 () Bool)

(declare-fun res!272832 () Bool)

(assert (=> b!456852 (=> (not res!272832) (not e!266862))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!456852 (= res!272832 (and (= (size!13964 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13963 _keys!709) (size!13964 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456853 () Bool)

(declare-fun res!272828 () Bool)

(assert (=> b!456853 (=> (not res!272828) (not e!266862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456853 (= res!272828 (validMask!0 mask!1025))))

(declare-fun b!456854 () Bool)

(declare-fun res!272834 () Bool)

(declare-fun e!266857 () Bool)

(assert (=> b!456854 (=> (not res!272834) (not e!266857))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456854 (= res!272834 (bvsle from!863 i!563))))

(declare-fun b!456855 () Bool)

(declare-fun res!272829 () Bool)

(assert (=> b!456855 (=> (not res!272829) (not e!266862))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456855 (= res!272829 (validKeyInArray!0 k!794))))

(declare-fun b!456856 () Bool)

(declare-fun e!266861 () Bool)

(assert (=> b!456856 (= e!266861 (bvslt from!863 (size!13964 _values!549)))))

(declare-fun b!456857 () Bool)

(declare-fun res!272826 () Bool)

(assert (=> b!456857 (=> (not res!272826) (not e!266862))))

(declare-fun arrayContainsKey!0 (array!28341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456857 (= res!272826 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456858 () Bool)

(declare-fun res!272824 () Bool)

(assert (=> b!456858 (=> (not res!272824) (not e!266862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28341 (_ BitVec 32)) Bool)

(assert (=> b!456858 (= res!272824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456859 () Bool)

(declare-fun e!266864 () Bool)

(assert (=> b!456859 (= e!266864 tp_is_empty!12287)))

(declare-fun b!456860 () Bool)

(assert (=> b!456860 (= e!266862 e!266857)))

(declare-fun res!272823 () Bool)

(assert (=> b!456860 (=> (not res!272823) (not e!266857))))

(declare-fun lt!206696 () array!28341)

(assert (=> b!456860 (= res!272823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206696 mask!1025))))

(assert (=> b!456860 (= lt!206696 (array!28342 (store (arr!13611 _keys!709) i!563 k!794) (size!13963 _keys!709)))))

(declare-fun b!456861 () Bool)

(declare-fun e!266859 () Bool)

(declare-fun mapRes!20071 () Bool)

(assert (=> b!456861 (= e!266863 (and e!266859 mapRes!20071))))

(declare-fun condMapEmpty!20071 () Bool)

(declare-fun mapDefault!20071 () ValueCell!5800)

