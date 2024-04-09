; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38990 () Bool)

(assert start!38990)

(declare-fun b!408146 () Bool)

(declare-fun res!236199 () Bool)

(declare-fun e!245011 () Bool)

(assert (=> b!408146 (=> (not res!236199) (not e!245011))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14973 0))(
  ( (V!14974 (val!5245 Int)) )
))
(declare-datatypes ((ValueCell!4857 0))(
  ( (ValueCellFull!4857 (v!7488 V!14973)) (EmptyCell!4857) )
))
(declare-datatypes ((array!24657 0))(
  ( (array!24658 (arr!11775 (Array (_ BitVec 32) ValueCell!4857)) (size!12127 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24657)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24659 0))(
  ( (array!24660 (arr!11776 (Array (_ BitVec 32) (_ BitVec 64))) (size!12128 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24659)

(assert (=> b!408146 (= res!236199 (and (= (size!12127 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12128 _keys!709) (size!12127 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!236200 () Bool)

(assert (=> start!38990 (=> (not res!236200) (not e!245011))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38990 (= res!236200 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12128 _keys!709))))))

(assert (=> start!38990 e!245011))

(assert (=> start!38990 true))

(declare-fun e!245010 () Bool)

(declare-fun array_inv!8600 (array!24657) Bool)

(assert (=> start!38990 (and (array_inv!8600 _values!549) e!245010)))

(declare-fun array_inv!8601 (array!24659) Bool)

(assert (=> start!38990 (array_inv!8601 _keys!709)))

(declare-fun b!408147 () Bool)

(declare-fun res!236194 () Bool)

(assert (=> b!408147 (=> (not res!236194) (not e!245011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24659 (_ BitVec 32)) Bool)

(assert (=> b!408147 (= res!236194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408148 () Bool)

(declare-fun res!236197 () Bool)

(assert (=> b!408148 (=> (not res!236197) (not e!245011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408148 (= res!236197 (validMask!0 mask!1025))))

(declare-fun b!408149 () Bool)

(declare-fun e!245009 () Bool)

(declare-fun tp_is_empty!10401 () Bool)

(assert (=> b!408149 (= e!245009 tp_is_empty!10401)))

(declare-fun b!408150 () Bool)

(declare-fun res!236201 () Bool)

(assert (=> b!408150 (=> (not res!236201) (not e!245011))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408150 (= res!236201 (validKeyInArray!0 k0!794))))

(declare-fun b!408151 () Bool)

(declare-fun res!236193 () Bool)

(assert (=> b!408151 (=> (not res!236193) (not e!245011))))

(declare-fun arrayContainsKey!0 (array!24659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408151 (= res!236193 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408152 () Bool)

(declare-fun e!245006 () Bool)

(assert (=> b!408152 (= e!245006 tp_is_empty!10401)))

(declare-fun b!408153 () Bool)

(declare-fun res!236198 () Bool)

(assert (=> b!408153 (=> (not res!236198) (not e!245011))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408153 (= res!236198 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12128 _keys!709))))))

(declare-fun b!408154 () Bool)

(declare-fun mapRes!17223 () Bool)

(assert (=> b!408154 (= e!245010 (and e!245006 mapRes!17223))))

(declare-fun condMapEmpty!17223 () Bool)

(declare-fun mapDefault!17223 () ValueCell!4857)

(assert (=> b!408154 (= condMapEmpty!17223 (= (arr!11775 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4857)) mapDefault!17223)))))

(declare-fun b!408155 () Bool)

(declare-fun e!245008 () Bool)

(assert (=> b!408155 (= e!245011 e!245008)))

(declare-fun res!236196 () Bool)

(assert (=> b!408155 (=> (not res!236196) (not e!245008))))

(declare-fun lt!188744 () array!24659)

(assert (=> b!408155 (= res!236196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188744 mask!1025))))

(assert (=> b!408155 (= lt!188744 (array!24660 (store (arr!11776 _keys!709) i!563 k0!794) (size!12128 _keys!709)))))

(declare-fun b!408156 () Bool)

(declare-fun res!236202 () Bool)

(assert (=> b!408156 (=> (not res!236202) (not e!245011))))

(declare-datatypes ((List!6804 0))(
  ( (Nil!6801) (Cons!6800 (h!7656 (_ BitVec 64)) (t!11986 List!6804)) )
))
(declare-fun arrayNoDuplicates!0 (array!24659 (_ BitVec 32) List!6804) Bool)

(assert (=> b!408156 (= res!236202 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6801))))

(declare-fun b!408157 () Bool)

(declare-fun res!236195 () Bool)

(assert (=> b!408157 (=> (not res!236195) (not e!245011))))

(assert (=> b!408157 (= res!236195 (or (= (select (arr!11776 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11776 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408158 () Bool)

(assert (=> b!408158 (= e!245008 false)))

(declare-fun lt!188745 () Bool)

(assert (=> b!408158 (= lt!188745 (arrayNoDuplicates!0 lt!188744 #b00000000000000000000000000000000 Nil!6801))))

(declare-fun mapNonEmpty!17223 () Bool)

(declare-fun tp!33342 () Bool)

(assert (=> mapNonEmpty!17223 (= mapRes!17223 (and tp!33342 e!245009))))

(declare-fun mapRest!17223 () (Array (_ BitVec 32) ValueCell!4857))

(declare-fun mapValue!17223 () ValueCell!4857)

(declare-fun mapKey!17223 () (_ BitVec 32))

(assert (=> mapNonEmpty!17223 (= (arr!11775 _values!549) (store mapRest!17223 mapKey!17223 mapValue!17223))))

(declare-fun mapIsEmpty!17223 () Bool)

(assert (=> mapIsEmpty!17223 mapRes!17223))

(assert (= (and start!38990 res!236200) b!408148))

(assert (= (and b!408148 res!236197) b!408146))

(assert (= (and b!408146 res!236199) b!408147))

(assert (= (and b!408147 res!236194) b!408156))

(assert (= (and b!408156 res!236202) b!408153))

(assert (= (and b!408153 res!236198) b!408150))

(assert (= (and b!408150 res!236201) b!408157))

(assert (= (and b!408157 res!236195) b!408151))

(assert (= (and b!408151 res!236193) b!408155))

(assert (= (and b!408155 res!236196) b!408158))

(assert (= (and b!408154 condMapEmpty!17223) mapIsEmpty!17223))

(assert (= (and b!408154 (not condMapEmpty!17223)) mapNonEmpty!17223))

(get-info :version)

(assert (= (and mapNonEmpty!17223 ((_ is ValueCellFull!4857) mapValue!17223)) b!408149))

(assert (= (and b!408154 ((_ is ValueCellFull!4857) mapDefault!17223)) b!408152))

(assert (= start!38990 b!408154))

(declare-fun m!399525 () Bool)

(assert (=> b!408157 m!399525))

(declare-fun m!399527 () Bool)

(assert (=> start!38990 m!399527))

(declare-fun m!399529 () Bool)

(assert (=> start!38990 m!399529))

(declare-fun m!399531 () Bool)

(assert (=> b!408147 m!399531))

(declare-fun m!399533 () Bool)

(assert (=> b!408150 m!399533))

(declare-fun m!399535 () Bool)

(assert (=> mapNonEmpty!17223 m!399535))

(declare-fun m!399537 () Bool)

(assert (=> b!408155 m!399537))

(declare-fun m!399539 () Bool)

(assert (=> b!408155 m!399539))

(declare-fun m!399541 () Bool)

(assert (=> b!408151 m!399541))

(declare-fun m!399543 () Bool)

(assert (=> b!408156 m!399543))

(declare-fun m!399545 () Bool)

(assert (=> b!408158 m!399545))

(declare-fun m!399547 () Bool)

(assert (=> b!408148 m!399547))

(check-sat tp_is_empty!10401 (not start!38990) (not b!408150) (not b!408148) (not b!408147) (not mapNonEmpty!17223) (not b!408151) (not b!408158) (not b!408156) (not b!408155))
(check-sat)
